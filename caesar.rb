string = 'whatastring'

def caesar_cipher(string, shift)
  ascii_array = string_to_ascii(string)
  p ascii_array
  shifted_ascii_array = shift_ascii(ascii_array, shift)
  p shifted_ascii_array
  letter_array = ascii_to_char(shifted_ascii_array)
  letter_array.join
end

def string_to_ascii(string)
  ascii_array = []
  string.each_byte { |c| ascii_array.push c }
  ascii_array
end

def shift_ascii(ascii_array, shift)
  lower_letters = [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
                   117, 118, 119, 120, 121, 122]
  ascii_array.map { |ascii| lower_letters[ascii - 97 + shift - lower_letters.length] }
end

def ascii_to_char(ascii_array)

  ascii_array.map { |ascii| ascii.chr }
end

p caesar_cipher(string, 5)
