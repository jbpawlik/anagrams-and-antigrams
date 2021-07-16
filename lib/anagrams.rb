require 'pry'

module Text_Parsers

  def anagram_checker(str)
    scan = str.scan(/[aeiouy]/)
    if scan.length > 0
      array1 = str.downcase.chars.sort
      array2 = @text.downcase.chars.sort
      if array1 === array2
        return true
      else
        return false
      end
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

