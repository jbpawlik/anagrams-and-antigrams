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
          array1.each do |index|
            if array1[0] != array2[0]
              array1.shift
              if array1.length < 1
               return 'No letters match; this is an antigram!'
              end
            end
          return false
          end
        end
      else
        puts "You need to input actual words!"
        return false
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

