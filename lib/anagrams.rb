require 'pry'

module Text_Parsers

  def anagram_checker(str)
    if vowel_checker(str) === false
      puts "Ths wrds hv n vwls. Pls npt rl wrds!"
      return "no vowels"
    else
      if uneven_input(str) === true
        puts 'You need to enter the same number of characters to find out whether something is an anagram!'
        return 'uneven input'
      else
        if is_anagram(str) === 'antigram'
          puts 'No letters match; this is an antigram!'
          return 'antigram'
        elsif is_anagram(str) === false
          puts "Only these letters match: #{@matchingLetters.join(', ')}. Try again!"
          return @matchingLetters
        else
          puts "Congratulations, these are anagrams of each other!"
          return true
        end
      end
    end
  end

  def uneven_input(str)
    if @text.length != @str.length
      return true
    else
      return false
    end
  end

  def vowel_checker(str)
    words1 = str.downcase.split(/[^[[:word:]]]+/)
    words2 = @text.downcase.split(/[^[[:word:]]]+/)
    words1.each do |element|
      vowelArray1 = element.scan(/[aeiouy]/)
      if vowelArray1.length === 0
        return false
      else
        words2.each do |element|
          vowelArray2 = element.scan(/[aeiouy]/)
          if vowelArray2.length === 0
            return false
          else
            @str = words1.join('').gsub(/\s+/, "")
            @text = words2.join('').gsub(/\s+/, "")
            return true
          end
        end
      end
    end
  end

  def is_anagram(str)
    array1 = @text.chars.sort
    array2 = @str.chars.sort
    if array1.eql?(array2)
      return true
    else
      matchArray = array1 - array2
      if matchArray.length === array1.length
        return 'antigram'
      elsif
        @matchingLetters = array1 - matchArray
        return false
      end
    end
  end
end

class AnagramInputs
  include Text_Parsers
  def initialize(text)
    @text = text
  end
end

