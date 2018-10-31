def sort_array_asc (array)
  array.sort
end

def sort_array_desc (array)
  array.sort{|a,b| b<=>a}
end

def sort_array_char_count (array)
  array.sort do |a,b|
    a.length <=> b.length
  end  
end

def swap_elements (array)
  temp = array[1]
  array[1]=array[2]
  array[2] = temp
  array
end

def reverse_array (array)
  new_array = []
  count = array.length - 1
  array.each do |num|
    new_array.push(array[count])
    count -=1
  end
  new_array
end

def kesha_maker (array)
  new_array = []
  array.each do |word|
    word[2] = "$"
    new_array.push(word)
  end 
end

def find_a (array)
 new_array =  array.select do |word|
      word[0] == "a"
  end 
  new_array
end

def sum_array(array)
  sum = 0 
  array.each do |num|
    sum += num
  end
  sum
end

def add_s (array)
 array.collect do |word|
   if word != "feet"
    word + "s"
  else
    word
 end
 end
end