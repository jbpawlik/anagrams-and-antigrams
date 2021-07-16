require 'pry'

module Text_Parsers
  def anagram_checker(str)
    array1 = str.chars
    array2 = @text.chars
    if array1.sort === array2.sort
      return true
    end
  end
end

class AnagramInputs
  include Text_Parsers

  def initialize(str)
    @text = str
  end

end

