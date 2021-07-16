require 'pry'

module Text_Parsers
  def anagram_checker(str)
    @text = str
    uneven_input()
      if uneven_input === true
        puts 'You need to enter the same number of characters if you want to know if something is an anagram!'
      else
        vowel_checker()
        if vowel_checker === false
          puts "You need to input actual words!"
        else
          is_anagram()
          if is_anagram === false
            puts "This is not an anagram."
          else
            puts "Congratulations, these are anagrams of each other!"
          end
        end
      end
    end
  end

  def uneven_input()
    if @text.length != str.length
    else
      return true
    end
  end

  def vowel_checker()
    scan = str.scan(/[aeiouy]/)
    if scan.length > 0
      return true
    else
      return
    end
  end

  def is_anagram()
    array1 = str.downcase.chars.sort
    array2 = @text.downcase.chars.sort
    if array1 === array2
      return true
    else
      is_antigram()
      if is_antigram === true
        return 'No letters match; this is an antigram!'
      else
        return false
    end
  end

  def is_antigram
    matchArray = array1 - array2
    if matchArray.length === array1.length
      return 'No letters match; this is an antigram!'
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

