def map(array)
  i = 0 
  result = []
  while i < array.length do 
    var = array[i]
    result << yield(var)
    i += 1 
  end 
  result
end 

def reduce(array, starting_value = 0)
  total = starting_value
  total += yield(array[0], starting_value)
  i = 1 
  while i < array.length do 
    var = array[i]
    result = yield(var, 0)
  end 
  result 
end 