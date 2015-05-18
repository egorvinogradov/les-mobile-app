Array::chunkify = (number) ->
  chunks = []
  i = 0
  j = @length
  while i < j
    chunks.push @slice(i, i + number)
    i += number
  chunks
