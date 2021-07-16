require 'pry'

module Text_Parsers
  def anagram_checker(str1, str2)
    str1 = str2
  end
end

class AnagramInputs
  include Text_Parsers

  def initialize(str)
    @text = str
  end

  def anagram_checker(str)
    if @text === str
      return true
    end
  end

end

