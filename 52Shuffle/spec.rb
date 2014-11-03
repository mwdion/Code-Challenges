require 'minitest/autorun'
require_relative '52Shuffle'

class ShuffleTest < MiniTest::Unit::TestCase
  describe "Shuffle", "A simple shuffle test" do

  it "randomly sorts the cards" do
    shuffle = Shuffle.new(cards) 
    shuffle.cards.wont_equal cards
  end
end
end
# michael = person.new
# person.blank should equal 

# it "should shuffle the array of cards" do
#     expect(cards.sort_by.rand).not_to eq(cards)
#  end

# describe "Person", "A simple person example" do

#   it "has a full name" do
#     person = Person.new("Yukihiro", "Matsumoto")
#     person.full_name.must_equal "Yukihiro Matsumoto"
#   end

# end