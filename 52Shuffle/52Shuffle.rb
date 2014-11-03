class Shuffle
  def initialize(cards)
    @cards = (1..52).to_a
  end
  def shuffle
    cards.sort_by{rand}
  end
end

