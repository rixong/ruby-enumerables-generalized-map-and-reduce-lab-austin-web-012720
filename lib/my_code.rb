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
    # cur_total = !!cur_total if !(source_array[i].instance_of? Integer) #switch cur_total to boolean if cur item isn't integer
    i += 1
  end
  return cur_total
end