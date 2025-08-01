proc reverse*(s: string): string =
  var
    novaStr: string
    indexEnd = len(s)-1

  for a in countdown(indexEnd, 0):
    novaStr = novaStr & s[a]
    indexEnd = indexEnd-1

  return novaStr