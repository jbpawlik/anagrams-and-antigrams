require 'rspec'
require 'anagrams'

describe('anagram_checker') do
  it("should return true if input letters match") do
    text = AnagramInputs.new('a')
    expect(text.anagram_checker('a')).to(eq(true))
  end
  it("should return true if words match") do
    text = AnagramInputs.new('and')
    expect(text.anagram_checker('nad')).to(eq(true))
  end
end