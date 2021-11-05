string = 'What a string!'

def caesar_cipher(string, shift)
  ascii_array = string_to_ascii(string)
  shifted_ascii_array = shift_ascii(ascii_array, shift)
  letter_array = ascii_to_char(shifted_ascii_array)
  letter_array.join
end

def string_to_ascii(string)
  ascii_array = []
  string.each_byte { |c| ascii_array.push c }
  ascii_array
end

def shift_ascii(ascii_array, shift)
  downcase_codes = [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
                    117, 118, 119, 120, 121, 122]
  upcase_codes = [65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
                  90]

  ascii_array.map do |ascii_code|
    case ascii_code
    when 97..122
      downcase_codes[ascii_code - downcase_codes[0] + shift - downcase_codes.length]
    when 65..90
      upcase_codes[ascii_code - upcase_codes[0] + shift - upcase_codes.length]
    else
      ascii_code
    end
  end
end

def ascii_to_char(ascii_array)
  ascii_array.map { |ascii| ascii.chr }
end

p caesar_cipher(string, 5)
