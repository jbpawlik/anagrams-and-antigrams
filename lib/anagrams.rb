require 'pry'

module Text_Parsers

  def anagram_checker(str)
      if uneven_input(str) === true
        return 'You need to enter the same number of characters if you want to know if something is an anagram!'
      else
        if vowel_checker(str) === false
          return "You need to input actual words!"
        else
          if is_anagram(str) === 'antigram'
            return 'No letters match; this is an antigram!'
          elsif is_anagram(str) === false
            return 'Only some letters match. Try again!'
          else
            puts "Congratulations, these are anagrams of each other!"
            return true
          end
        end
      end
    end
  end

  def uneven_input(str)
    if @text.length != str.length
      return true
    else
      return false
    end
  end

  def vowel_checker(str)
    scan = str.scan(/[aeiouy]/)
    if scan.length > 0
      return true
    else
      return false
    end
  end

  def is_anagram(str)
    array1 = @text.downcase.chars.sort
    array2 = str.downcase.chars.sort
    if array1.eql?(array2)
      return true
    else
      matchArray = array1 - array2
      if matchArray.length === array1.length
        return 'antigram'
      else
        return false
      end
    end
  end


class AnagramInputs
  include Text_Parsers
  def initialize(str)
    @text = str
  end
end

