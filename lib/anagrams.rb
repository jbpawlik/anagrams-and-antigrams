require 'pry'

module Text_Parsers
  def anagram_checker(str)
    if @text.include?(str)
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

