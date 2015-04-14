class ShuffleController < ApplicationController

  def create
    card_deck.shuffle!
    @cards = CardDecorator.decorate(card_deck.cards)
    render :show
  end

  private

  def card_deck
    @card_deck ||= CardDeck.new
  end
end
