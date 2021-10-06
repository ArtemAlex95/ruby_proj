# frozen_string_literal: true

require 'pry-byebug'

def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  string.each_char.with_index do |character, index|
    if alphabet.include?(character.downcase)
      string[index] = if character.downcase == character
                        alphabet[(alphabet.index(character) + shift) % alphabet.count]
                      else
                        alphabet[(alphabet.index(character.downcase) + shift) % alphabet.count].upcase
                      end
    end
  end
  puts "\n#{string}"
end

print 'Enter the string to encode : '
string = gets.chomp

print 'Enter the shift factor for the string : '
shift = gets.chomp.to_i

caesar_cipher(string, shift)
