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
  result = 0
  i = 0 
  while i < array.length do 
    var = array[i]
    result = yield(var, total)
  end 
  result 
end 