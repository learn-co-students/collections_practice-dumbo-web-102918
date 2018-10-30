
def sort_array_asc(arr)
  arr.sort
end


def sort_array_desc(arr)
  arr.sort.reverse
end



def sort_array_char_count(arr)
  arr.sort_by{|ele|ele.length}
end



def swap_elements(arr)
  new_arr = [arr[0]]+ (arr[1],arr[2] = arr[2], arr[1])
end



def reverse_array(arr)
  arr.reverse
end


def kesha_maker(names)
  names.map {|name|name.chars.map.with_index{|ch, i|i==2 ? '$' : ch}.join}
end


def find_a(words)
  words.select {|word|word[0]=='a'}
end


def sum_array(arr)
  arr.reduce(:+)
end



def add_s(words)
  words.map.with_index { |word, i|i != 1 ? word+"s" : word }
end
