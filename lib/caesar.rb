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
  lowcase_a_code = 97
  upcase_a_code = 65
  characters = 26

  ascii_array.map do |ascii_code|
    case ascii_code
    when 97..122
      (ascii_code - lowcase_a_code + shift) % characters + lowcase_a_code
    when 65..90
      (ascii_code - upcase_a_code + shift) % characters + upcase_a_code
    else
      ascii_code
    end
  end
end

def ascii_to_char(ascii_array)
  ascii_array.map { |ascii| ascii.chr }
end
