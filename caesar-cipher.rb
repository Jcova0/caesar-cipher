def caesar_cipher(string, shift_factor)
  lower_case = ("a".."z").to_a
  upper_case = ("A".."Z").to_a
  caesar_string = ""

  string.each_char do |char|
    if lower_case.include?(char)
      shifted_index = (lower_case.index(char) + shift_factor) % 26
      caesar_string += lower_case[shifted_index]
    elsif upper_case.include?(char)
      shifted_index = (upper_case.index(char) + shift_factor) % 26
      caesar_string += upper_case[shifted_index]
    else
      caesar_string += char
    end
  end
  puts caesar_string
end


caesar_cipher("abca", 10)
