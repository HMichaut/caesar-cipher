# String Number -> String
# Consumes a string str and a Number num and returns a string
# with each letter in the string str shifted of num letters. 
def caesar_cipher(str, num) 
  input_array = str.split("")
  output_array = input_array.map {|letter| shift_element(letter, num)}
  return output_array.join("")
end

# 1String Integer -> 1String
# Consumes a 1String letter and an integer num and returns the 
# letter shifted of num letters. 
def shift_element(letter, num) 
  letters_maj = ('A'..'Z').to_a
  letters_min = ('a'..'z').to_a
  if letters_maj.include?(letter)
    index_letter_maj = letters_maj.index(letter)
    new_index_letter_maj = index_letter_maj + num
    return determine_new_letter(new_index_letter_maj, letters_maj)
  elsif letters_min.include?(letter)
    index_letter_min = letters_min.index(letter)
    new_index_letter_min = index_letter_min + num
    return determine_new_letter(new_index_letter_min, letters_min)
  else
    return letter
  end
end

# Number [List-of Strings] -> 1String
# Consumes a Number num and a List of Strings letter_array and 
# return a letter correponding to the index. If the index is more
# than the list length then the array loops back to zero.
def determine_new_letter(num, letters_array)
  array_length = letters_array.length
  if num > array_length
    return letters_array[num - array_length]
  else
    return letters_array[num]
  end
end

puts caesar_cipher("What a string!", 5)