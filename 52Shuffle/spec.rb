require 'minitest/autorun'
require_relative '52Shuffle'

class ShuffleTest < MiniTest::Unit::TestCase
  describe "Shuffle", "A simple shuffle test" do

  it "randomly sorts the cards" do
    cards = Shuffle.new((1..52).to_a)
    cards.shuffle.wont_equal (cards)
  end
end
