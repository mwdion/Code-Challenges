require 'minitest/autorun'
require_relative 'MillionDuplicate'

class MillionDuplicate_Test < MiniTest::Unit::TestCase

  def test 
    @md = MillionDuplicate.new
  end    
  def print_duplicate 
    @md.print
  end
end
