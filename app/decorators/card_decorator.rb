class CardDecorator
  def initialize(card)
    self.card = card
  end

  def image_file_name(extension='svg')
    "#{card.name}.#{extension}"
  end

  private
  attr_accessor :card
end
