class CardDeck
  delegate :shuffle!, to: :cards
  attr_reader :cards

  def initialize
    self.cards = Card::CARDS_NAME.map { |card_name| Card.new(card_name) }
  end

  private
  attr_writer :cards

end
