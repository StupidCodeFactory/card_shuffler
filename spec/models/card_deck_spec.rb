require 'rails_helper'

RSpec.describe CardDeck do
  subject { described_class.new }

  describe '#cards' do
    it 'return an array of card' do
      subject.cards.each do |card|
        expect(card).to be_instance_of(Card)
      end
    end
  end

  describe '#shuffle' do
    it 'shuffles the cards' do
      expect(subject.cards).to receive(:shuffle)
      subject.shuffle
    end
  end
end
