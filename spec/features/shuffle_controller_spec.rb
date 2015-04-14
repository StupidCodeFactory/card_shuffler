require 'rails_helper'

RSpec.describe ShuffleController, type: :feature do

  before { visit '/shuffle' }

  describe '#show' do
    describe 'first visit' do

      it 'has a shuffle button' do
        expect(page).to have_css('button', text: 'shufle deck')
      end

    end
  end

  describe '#create' do
    let(:card_deck) { CardDeck.new }

    it 'shuffles the deck of cards' do
      expect(CardDeck).to  receive(:new).and_return(card_deck)
      expect(card_deck).to receive(:shuffle).and_call_original

      card_deck.cards each do |card|
        expect(page).to have_css("img[src='#{card.image_path}']")
      end
    end

  end
end
