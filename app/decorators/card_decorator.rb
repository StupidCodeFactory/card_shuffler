class CardDecorator

  def self.decorate(cards)
    cards.map { |card| new(card) }
  end

  def initialize(card)
    self.card = card
  end

  def image_file_name(extension='gif')
    "#{card.name}.#{extension}"
  end

  def to_partial_path
    'card'
  end

  private
  attr_accessor :card
end
