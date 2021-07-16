#! /usr/bin/env ruby
require './lib/anagrams.rb'

puts 'This program checks for anagrams and antigrams. Please enter the first word or phrase:'
text1 = AnagramInputs.new(gets)
puts 'Please enter the second word or phrase:'
text2 = gets
text1.anagram_checker(text2)
