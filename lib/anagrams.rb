require 'pry'

module Text_Parsers
  def anagram_checker(str)
    if @text.length != str.length
      return false
    else
      scan = str.scan(/[aeiouy]/)
      if scan.length > 0
        array1 = str.downcase.chars.sort
        array2 = @text.downcase.chars.sort
        if array1 === array2
          return true
        else
          matchArray = array1 - array2
          if matchArray.length === array1.length
          return 'No letters match; this is an antigram!'
          return false
          end
        end
      else
        return "You need to input actual words!"
      end
    end
  end
end

class AnagramInputs
  include Text_Parsers
  def initialize(str)
    @text = str
  end
end

