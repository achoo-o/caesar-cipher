def caesar_cipher(string, shift)
  upcase = ('A'..'Z').to_a
  lowcase = ('a'..'z').to_a
  letters = string.chars
  
  cipher = letters.map do |char|
    if upcase.include?(char)
      index = upcase.find_index(char)
      upcase[(index + shift) % 26]
    elsif lowcase.include?(char)
      index = lowcase.find_index(char)
      lowcase[(index + shift) % 26]
    else # Special characters
      char
    end
  end
  cipher.join
end

puts "What a string!, 5: #{caesar_cipher('What a string!', 5)}"