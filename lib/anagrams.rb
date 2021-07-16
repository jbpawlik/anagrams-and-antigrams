require 'pry'

module Text_Parsers

  def anagram_checker(str)
    if vowel_checker(str) === false
      return "You need to input actual words!"
        else
          if uneven_input(str) === true
            return 'You need to enter the same number of characters if you want to know if something is an anagram!'
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
    words1 = str.split(/[^[[:word:]]]+/)
    words2 = @text.split(/[^[[:word:]]]+/)
    binding.pry
    words1.each do |element|
      vowelArray1 = element.scan(/[aeiouy]/)
      if vowelArray1.length === 0
        return false
      else
        words2.each do |element|
          vowelArray2 = element.scan(/[aeiouy]/)
          if vowelArray2.length > 0
            @text = words1.join('').gsub(/\s+/, "")
            str = words2.join('').gsub(/\s+/, "")
            return true
          end
        end
      end
    end
    # scan1 = str.scan(/[aeiouy]/)
    # scan2 = @text.scan(/[aeiouy]/)
    # if scan1.length > 0 && scan2.length > 0
    #   return true
    # else
    #   return false
    # end
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
  def initialize(string)
    @text = string
  end
end

