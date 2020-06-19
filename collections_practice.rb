
def sort_array_asc(array)
  sorted = []
  i = 0
  while array.length != 0
    sorted << array.min
    array.delete(array.min)
    #can call min
    # then delete from array until length = 0
    end
  sorted
end

def sort_array_asc(array, sorted = nil)

#this whole thing below is limiting case,
#return sorted once array.length = 0 as you delete
return sorted if array.length <= 0
  if sorted == nil
     sorted = []
  end

  sorted <<array.min
  array.delete(array.min)

  ## recursively call, but sorted is not nil
  sort_array_asc(array, sorted)
  sorted
end

#using sort method
def sort_array_asc(array)
   array.sort
   #returns new array
end

 def sort_array_desc(array)
    array.sort do |a, b|
    #a, b stay same order in pipe
    #but reversed in spaceship
      b <=> a
    end
end

def sort_array_desc(array)
  array.sort.reverse
  #sort it ascending, then reverse it
end


def sort_array_char_count(array)
  #sort array of strings by length
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def sort_array_char_count(array)
  #use sort by length
  #no block, just put &:length in paren
  array.sort_by(&:length)
end

  def swap_elements(array)
# swap second and third
    # swapped = []
    array[2], array[1] = array[1], array[2]
    array.map do |element|
      element
    end
  # or can use each to get new array
  #but have to say swapped = [] first and return swapped
  #   array.each do |element|
  #   swapped << element
  #   end
  #   swapped
  end

  def swap_elements_from_to(array, index, new_index)
    array[index], array[new_index] = array[new_index], array[index]
    return array
  end

  describe 'swap_elements_from_to' do
    it 'swaps elements and allows you to specify the index of the element you would like to move to a new index' do
      expect(swap_elements_from_to(["one", "two", "three"], 2, 1)).to eq(["one", "three", "two"])
    end
  end


  def reverse_array(array)
    array.reverse
  end

def kesha_maker(array)
  new_array = []
  array.each_with_index do |element, index|
    element[2] = '$'
    #this assigns $ to element[2]
    # if wrote '$' = element[2], then would have assigned
    # the element[2] value to $!!
    new_array.push(element)
  end
  new_array
end

def find_a(array)
   array.select do |word|
     word.start_with?('a')
  end
end

def sum_array(numbers)
  numbers.inject(0) do |accumulator, element|
    accumulator + element
  end
end

def add_s(array)
  #Build a method that adds an "s" to each word in the array
  #except for the second element in the array
  #("feet" is already plural).

  #plurals = []
      array.each_with_index.collect do |word,index|
        if index != 1
          word = word + "s"
        else
          word
        end
        #plurals << word
      end
  #plurals
end
