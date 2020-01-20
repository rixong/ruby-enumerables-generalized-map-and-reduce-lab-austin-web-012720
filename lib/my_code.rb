def map(source_array)
  new = []
  i=0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i+=1
  end
  return new
end

def reduce(source_array, total = 0)
  i=0
  while i < source_array.length
    total = yield(source_array[i], total)
    i += 1
  end
  return total
end