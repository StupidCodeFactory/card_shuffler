class CardDeck
  delegate :shuffle!, to: :cards
  attr_reader :cards

  def initialize(card_klass=Card)
    self.cards = card_klass::CARD_SET.map { |card_name| card_klass.new(card_name) }
  end

  private
  attr_writer :cards

end
