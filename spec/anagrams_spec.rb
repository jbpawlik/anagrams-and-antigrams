require 'rspec'
require 'anagrams'

describe('anagram_checker') do
  it("should return true if input letters match") do
    text = AnagramInputs.new('a')
    expect(text.anagram_checker('a')).to(eq(true))
  end
  it("should return true if words match") do
    text = AnagramInputs.new('and')
    expect(text.anagram_checker('and')).to(eq(true))
  end
  it("should return true if all letters in words match") do
    text = AnagramInputs.new('and')
    expect(text.anagram_checker('dan')).to(eq(true))
  end
  it("should return true if words match, regardless of case") do
    text = AnagramInputs.new('and')
    expect(text.anagram_checker('DaN')).to(eq(true))
  end
  it("should return 'no vowels' if word contains no vowels") do
    text = AnagramInputs.new('grnd')
    expect(text.anagram_checker('dnrg')).to(eq('no vowels'))
  end
  it("should return 'antigram' if word is an antigram") do
    text = AnagramInputs.new('grind')
    expect(text.anagram_checker('atoll')).to(eq('antigram'))
  end
  it("should return matching letters if only some letters match") do
    text = AnagramInputs.new('grind')
    expect(text.anagram_checker('grand')).to(eq(["d", "g", "n", "r"]))
  end
  it("should allow user to input sentences with spaces and punctuation") do
    text = AnagramInputs.new('Hello! My friend.')
    expect(text.anagram_checker('O! My friend Hell.')).to(eq(true))
  end
  it("should return 'uneven input' if user enters text with different character counts") do
    text = AnagramInputs.new('blob')
    expect(text.anagram_checker('blorb')).to(eq('uneven input'))
  end
end