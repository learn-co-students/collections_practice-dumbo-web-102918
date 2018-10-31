def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a,b| b <=> a }
end

def sort_array_char_count(array)
  array.sort_by(&:length)
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |string|
    kesha_array << string.sub(string[2], "$")
  end
  kesha_array
end

def find_a(array)
  array.select { |string| string.start_with? "a" }
end

def sum_array(array)
  array.inject(0) { |sum, x| sum + x }
end

def add_s(array)
  array.each_with_index.collect do |elem, i|
    if i != 1
      elem + 's'
    else
      elem
    end
  end
end
