require 'rails_helper'

RSpec.describe ShuffleController, type: :feature do

  before { visit '/' }

  describe '#create' do
    let(:card_deck) { CardDeck.new }

    it 'shuffles the deck of cards' do
      expect(CardDeck).to  receive(:new).and_return(card_deck)
      expect(card_deck).to receive(:shuffle!).and_call_original

      click_button 'Shuffle a new deck!'

      card_deck.cards.each do |card|
        card = CardDecorator.new(card)
        expect(page).to have_css("img[src='/assets/#{card.image_file_name}']")
      end
    end

  end
end
