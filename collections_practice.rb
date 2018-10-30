require "pry"
def sort_array_asc (array)
  array.sort
end

def sort_array_desc (array)
  array.sort.reverse
end

def sort_array_char_count (array)
  array.sort_by(&:length)
end

def swap_elements (array)
  array.insert(1,array.delete_at(2))
end

def reverse_array (array)
  array.reverse
end

def kesha_maker (array)
  array.each do |item|
    item[2] = '$'
  end

end

def find_a (array)
  array.select {|item| item.start_with?("a")}
end

def sum_array (array)
  array.inject {|sum,n| sum +n}
end

def add_s (array)
  array.each_with_index.collect do |element, index|
    if index != 1
      element + 's'
    else
      element
    end
  end
end
