require 'minitest/autorun'
require_relative 'FirstNonRepeatingChar'

class FirstNonRepeatingChar_Test < MiniTest::Unit::TestCase
  def test_char_is_equal_to_e
    string = FirstNonRepeatingChar.new("DEFD")
    chars[0].must_equal "E"
  end
end 
