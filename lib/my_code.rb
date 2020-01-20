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
  num1 = sv
  i = 0
 else
  num1 = source_array[0]
  i = 1
 end
  while i < source_array.length
    num1 = !!num1 if !(source_array[i].instance_of? Integer)
    num1 = yield(source_array[i], num1)
    i += 1
  end
  return num1
end