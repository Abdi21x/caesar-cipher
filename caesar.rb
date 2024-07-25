def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  string.chars.map do |char|
    if alphabet.include?(char)
      alphabet[(alphabet.index(char) + shift) % alphabet.length]
    end
  end
end

puts 'Enter your string : '
user_input = gets.chomp
puts 'Enter the number of shifts : '
puts caesar_cipher(user_input, gets.chomp.to_i)