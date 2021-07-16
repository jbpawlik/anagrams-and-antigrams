require 'rspec'
require 'anagrams'

describe('anagram_checker') do
  it("Should return true if word contains the same letters") do
    text = AnagramInputs.new('a')
    expect(text.anagram_checker('a')).to(eq(true))
  end
end