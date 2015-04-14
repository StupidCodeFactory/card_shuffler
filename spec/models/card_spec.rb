require 'rails_helper'

RSpec.describe Card do
  describe '#initialize' do
    it 'takes a card name as an argument' do
      expect { Card.new('AC') }.to_not raise_error
    end

    it 'the card name shold be valid' do
      expect { Card.new('card does not exists') }.to raise_error(ArgumentError, "Invalid card name: 'card does not exists'")
    end
  end
end
