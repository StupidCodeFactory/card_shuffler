class Card

  CARD_SET = [
    'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9', 'c10', 'cj', 'cq', 'ck',
    'd1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'd9', 'd10', 'dj', 'dq', 'dk',
    'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'h7', 'h8', 'h9', 'h10', 'hj', 'hq', 'hk',
    's1', 's2', 's3', 's4', 's5', 's6', 's7', 's8', 's9', 's10', 'sj', 'sq', 'sk'
  ].freeze

  attr_reader :name

  def initialize(card_name)
    self.name = card_name
    validate_card_name
  end

  private
  attr_writer :name

  def validate_card_name
    return if CARD_SET.include? name
    raise ArgumentError.new("Invalid card name: '#{name}'")
  end
end
