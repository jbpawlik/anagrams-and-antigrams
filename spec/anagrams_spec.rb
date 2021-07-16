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
  it("should return false if word contains no vowel") do
    text = AnagramInputs.new('grnd')
    expect(text.anagram_checker('dnrg')).to(eq("You need to input actual words!"))
  end
  it("should inform user if word is an antigram") do
    text = AnagramInputs.new('grind')
    expect(text.anagram_checker('atoll')).to(eq('No letters match; this is an antigram!'))
  end
  it("should inform user if only some letters match") do
    text = AnagramInputs.new('grind')
    expect(text.anagram_checker('grand')).to(eq('Only some letters match. Try again!'))
  end
  it("should allow user to input sentences with spaces and punctuation") do
    text = AnagramInputs.new('Hello! My friend.')
    expect(text.anagram_checker('O! My friend Hell.')).to(eq(true))
  end
end 