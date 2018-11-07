
# def sort_array_asc(array)
#    array.sort
#    #returns new array
# end

def sort_array_asc(array)
  sorted = []
  i = 0
  while i < array.length - 1
    sorted.push(yield [i] <=> array[i + 1])
    i+= 1
  end
  sorted
end
