require 'pry'

def sort_array_asc(arg)
  arg.sort
end

def sort_array_desc(arg)
  arg.sort.reverse
end

def sort_array_char_count(arg)
  arg.sort_by {|x| x.size}
end

def swap_elements(arg)
  arg[1], arg[2] = arg[2], arg[1]
  arg
end

def reverse_array(arg)
  arg.reverse
end

def kesha_maker(arg)
  arg.each do |x|
    x[2] = '$'
  end
  arg
end

def find_a(arg)
  arg.select {|x| x.start_with? "a"}
end

def sum_array(arg)
  arg.inject {|sum, n| sum + n}
end

def add_s(arg)
  arg.each_with_index.map do |element, index|
    if index != 1
      element << "s"
    else
      element
    end
  end
end
