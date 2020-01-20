def map(source_array)
  new = []
  i=0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i+=1
  end
  return new
end

def reduce(source_array, sv=nil)
 if sv
  cur_total = sv
  i = 0
 else
  cur_total = source_array[0]
  i = 1
 end
  while i < source_array.length
    cur_total = yield(cur_total, source_array[i] )
    i += 1
  end
  cur_total
end