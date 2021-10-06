# frozen_string_literal: true

require 'pry-byebug'

def substrings(string, dictionary)
  lowered_text = string.downcase
  result = {}

  dictionary.each do |word|
    matches = lowered_text.scan(word).count
    result[word] = matches unless matches.zero?
  end
  puts result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, sit down! How's it going?", dictionary)
