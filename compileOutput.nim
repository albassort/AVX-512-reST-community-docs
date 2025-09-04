import std/xmlparser
import xmltree
import q
import sugar 
import sequtils
import std/options
import pretty
import groupBy
import json
import jsony
import tables
import sets
import strutils
import algorithm
import streams
import strformat
import strscans
import shell
import std/paths
import std/dirs
import re

let intelData = readFile("./data-3-6-9.xml")
let xml = q(intelData)
var hasOp = 0
var noOp = 0

type 
  Width = enum
    Other = "Other", MMX = "MMX", XMM = "XMM", YMM = "YMM", ZMM = "ZMM"
  Intrinsic = object
    function : string
    paramsNames : Option[seq[string]]
    paramsTypes : Option[seq[string]]
    paramsEtypes : Option[seq[string]]
    description : Option[string]
    header : Option[string]
    tech : Option[string]
    category : string
    operation : Option[string]
    width : Width
    returnType : string
  Patch = object 
    matchName : string
    note : Option[string]
    references : Option[seq[Reference]]
  Reference = object
    text : string
    url : string

const communityPatchesRaw = parseJson(staticRead("communitypatches.json")).to(Table[string, Patch])

var communityPatches = initTable[ptr Regex, Patch]()
var regexMatching : seq[Regex]

for match, patch in communityPatchesRaw.pairs:
  regexMatching.add(re(match))
  communityPatches[addr regexMatching[regexMatching.high]] = patch
  
   

proc tryAttr(a : XmlNode, b : string) : Option[string] = 
  try: some a.attr(b)
  except: return

proc tryInner(a : XmlNode) : Option[string] = 
  try: some a.innerText
  except: return 
    

const baseIndentSize = 2
proc getIndent(scaleFactor : int) : string =
  return " ".repeat(baseIndentSize*scaleFactor)

proc parsePsudeoCode(a : string) : string = 
  var output = newStringStream()

  output.writeLine(getIndent(2) & ".. code-block:: text\n") 
  for line in splitLines(a):
    output.writeLine(getIndent(4) & line)
    
  output.setPosition(0)
  return output.readAll()

let samples = xml.select("intrinsic")

var output = newSeq[Intrinsic](samples.len)
var i = 0
for sample in samples:
  let name = sample.attr("name")
  # echo name
  # echo (hasOp, noOp)
  let result = addr output[i]
  let operations = sample.select("operation")
  var operation : Option[string]

  if operations.len != 0:
    let preCode = operations[0].innerText
    operation = some parsePsudeoCode preCode 

  let params = sample.select("parameter")
  let description = sample.select("description")[0].tryInner
  let category = sample.select("category")[0].innerText

  let returnType = sample.select("return")[0].attr("type")

  let header = sample.select("header")[0].tryInner

  let tech = sample.tryAttr("tech")

  if params.len != 0:
    let types = params.map(x=> x.attr("type"))
    result[].paramsTypes = some(types)
    let etypes = params.map(x=> x.attr("etype"))

    if not( etypes.len == 1 and etypes[0] == ""):
      result[].paramsEtypes = some(etypes)

    let names = params.map(x=> x.attr("varname"))
    result[].paramsNames = some(names)

  var width : string
  result[].width = 
    if scanf(name, "_$*_", width):
      case width
      of "m": 
        MMX
      of "mm":
        XMM
      of "mm256":
        YMM
      of "mm512":
        ZMM
      else:
        Other
    else:
      Other


  result[].function = name
  result[].operation = operation
  result[].description = description
  result[].category = category
  result[].tech = tech
  result[].header = header
  result[].returnType = returnType

  i += 1
# print parseJson toJson output.groupBy(x=> x.tech.get(), y=> y)
const convert = {MMX : ":Register: MMX 64 bit", XMM : ":Register: XMM 128 bit", YMM : ":Register: YMM 256 bit",  ZMM : ":Register: ZMM 512 bit"}

const maxWidth = 60

proc constructSignature(a : Intrinsic) : string =

  if a.paramsNames.isNone(): return

  result.add(a.returnType & " ")
  result.add(a.function & "(")
  let types = a.paramsTypes.get()
  let names = a.paramsNames.get()
  for x in 0 .. names.high:
    let ptype = types[x]
    let name = names[x]
    result.add(&"{ptype} {name}")
    if x != names.high: result.add(", ")
  result.add(");")

let signatures = newTable[string, string]()
var signaturesToChange : HashSet[string]

# THis code is disgusting.

for intrinsic in output:
  let sig = constructSignature(intrinsic)
  if sig.len > maxWidth:
    signaturesToChange.incl(sig)
  signatures[intrinsic.function] = sig

const clangStype = "{" & &"BasedOnStyle: Google, ColumnLimit: {maxWidth}" & "}"
var exceptions : seq[Expect]
let batched = signaturesToChange.toSeq().distribute(25)
for batch in batched:
  echo batch.len
  let formatted = asgnShell(&""" echo "{batch.join("")}" """ & &"""| clang-format -style="{clangStype}" """, exceptions)[0].split(";")
  for reverse in formatted:
    if not reverse.contains("("):
      continue

    let parsed = reverse.split(" ")[1].split("(")[0]
    signatures[parsed] = reverse.strip()
  # i hate this. We need to match these back to their original

# we do a final pass 
for k,v  in signatures.pairs:
  echo v 
  if v.contains("\n"):
    var split = splitLines(v)
    for x in 0 .. split.high:
      split[x] = getIndent(2) & split[x]
    signatures[k] = split.join("\n")
  else:
    signatures[k] = getIndent(2) & v
  echo signatures[k]


var fileOutput = newStringStream()
var indexOutput = newStringStream()

let indexPrescript = readFile("./README.rst") 
indexOutput.writeLine(indexPrescript)
indexOutput.writeLine("")

indexOutput.writeLine("Index\n=====\n")
indexOutput.writeLine(".. toctree::")
indexOutput.writeLine(getIndent(2) & ":maxdepth: 1" )
indexOutput.writeLine(getIndent(2) & ":caption: Contents" )
indexOutput.writeLine("\n")

proc addIntrinsic(intrinsic : Intrinsic, stream : var StringStream, border = '^') =
  stream.writeLine(intrinsic.function)
  stream.writeLine(border.repeat(intrinsic.function.len))

  stream.writeLine(&":Tech: {intrinsic.tech.get()}")
  stream.writeLine(&":Category: {intrinsic.category}")
  stream.writeLine(&":Header: {intrinsic.header.get()}")
  stream.writeLine(&":Searchable: {intrinsic.tech.get()}-{intrinsic.category}-{intrinsic.width}")

  var width : string
  if scanf(intrinsic.function, "_$*_", width):
    case width
    of "m": 
      stream.writeLine(&":Register: MMX 64 bit")
    of "mm":
      stream.writeLine(&":Register: XMM 128 bit")
    of "mm256":
      stream.writeLine(&":Register: YMM 256 bit")
    of "mm512":
      stream.writeLine(&":Register: ZMM 512 bit")
    else:
      discard

  stream.writeLine(&":Return Type: {intrinsic.returnType}")

  if intrinsic.paramsEtypes.isSome():
    let etypes = intrinsic.paramsEtypes.get()
    let names = intrinsic.paramsNames.get()
    let params = intrinsic.paramsTypes.get()

    stream.writeLine(&":Param Types:")
    for x in 0 .. names.high:
      var base = getIndent(2) & &"{params[x]} {names[x]}" 
      if x != names.high: base = base & ", "
      stream.writeLine(base)

    if etypes.len != 0:
      stream.writeLine(&":Param ETypes:")
      for x in 0 .. names.high:
        var base = getIndent(2) & &"{etypes[x]} {names[x]}" 
        if x != names.high: base = base & ", "
        stream.writeLine(base)


  stream.writeLine("")
  
  stream.writeLine(".. code-block:: C\n")
  
  let sig = signatures[intrinsic.function]

  stream.writeLine(sig)

  stream.writeLine("\n.. admonition:: Intel Description\n")

  for line in splitLines(intrinsic.description.get()):
    stream.writeLine(getIndent(2) & line)
  stream.writeLine("")

  for regex, apply in communityPatches.pairs:
    if intrinsic.function.match(regex[]):
      echo "match"

      if apply.note.isSome():
        stream.writeLine(&".. admonition:: Community Note [{apply.matchName}]\n")
        stream.writeLine(getIndent(2) & apply.note.get())

      stream.writeLine("")

      if apply.references.isSome():

        stream.writeLine(&".. admonition:: See Also [{apply.matchName}]\n")

        for reference in apply.references.get():
          stream.writeline(getIndent(2) & &"`{reference.text} <{reference.url}>`_")
        stream.writeLine("")
          


  if intrinsic.operation.isSome():
    stream.writeLine(".. admonition:: Intel Implementation Psudeo-Code\n")
    stream.writeLine(intrinsic.operation.get())



const splitOutputPath =  Path "./docs/"
var techs : seq[string]
var allOutputs : seq[string]
for tech, techFuncs in output.groupBy(x=> x.tech.get(), y=> y).pairs:
  fileOutput.writeLine(tech)
  fileOutput.writeLine('='.repeat(tech.len))
  var subFiles : seq[string]
  for category, categoryFuncs in techFuncs.groupBy(x=> x.category, y=> y).pairs:

    fileOutput.writeLine(category)
    fileOutput.writeLine('-'.repeat(category.len))

    for width, widthFuncs in categoryFuncs.groupBy(x=> x.width, y=> y).pairs:
      fileOutput.writeLine(width)
      fileOutput.writeLine('~'.repeat(($width).len))
      
      var subFileOutput = newStringStream("")
      let searcchable = &"{tech}-{category}-{width}"
      subFileOutput.writeLine(searcchable)
      subFileOutput.writeLine('='.repeat(searcchable.len))
      subFileOutput.writeLine("")

      for intrinsic in widthFuncs:
        addIntrinsic(intrinsic, fileOutput)
        addIntrinsic(intrinsic, subFileOutput, '-')

      subFileOutput.setPosition(0)
      let outputDir = splitOutputPath / Path(tech) / Path(category)
      createDir(outputDir)
      let outputPath =  outputDir / Path &"{width}.rst"
      allOutputs.add($outputPath)
      writeFile($outputPath, subFileOutput.readAll())

      let relPath = Path(category) / Path &"{width}.rst"

      subfiles.add($relPath)

  let index =  newStringStream()
  index.writeLine(tech)
  index.writeLine('='.repeat(tech.len))
  index.writeLine("")

  index.writeLine(".. toctree::")
  index.writeLine(getIndent(2) & ":maxdepth: 4")
  index.writeLine("")
  for file in  subfiles:
    index.writeLine(getIndent(2) & file)

  index.setPosition(0)

  let indexPath = &"docs/{tech}/index.rst"

  writeFile(indexPath, index.readAll())
  indexOutput.writeLine(getIndent(2) & indexPath)


indexOutput.writeLine("")
let marker = "All Instructions"
indexOutput.writeLine(marker)
indexOutput.writeLine('='.repeat(marker.len))
indexOutput.writeLine("")

indexOutput.writeLine(".. toctree::")
indexOutput.writeLine(getIndent(2) & ":maxdepth: 4")
indexOutput.writeLine("")
for paths in allOutputs:
  indexOutput.writeLine(getIndent(2) & paths)

indexOutput.setPosition(0)
fileOutput.setPosition(0)
let result = fileOutput.readAll()
writeFile("avx-512.rst", result)
writeFile("index.rst", indexOutput.readAll())

# var parts : CountTable[string]
# for x in output:
#   let funcSplit = x.function.split("_")
#   for f in funcSplit:
#     parts.inc(f)
#
# pkrts.sort() 
# echo parts.pairs.toSeq().join("\n")
