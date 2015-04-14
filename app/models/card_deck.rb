class CardDeck


  def initialize
    self.cards = CARDS_NAME.map { |card_name| Card.new(card_name) }
  end

  private
  attr_accessor :cards
end
