string = 'What a string!'

def caesar_cipher(string, _shift)
  ascii_array = string_to_ascii(string)
end

def string_to_ascii(string)
  ascii_array = []
  string.each_byte { |c| ascii_array.push c }
  ascii_array
end
p caesar_cipher(string, 5)
