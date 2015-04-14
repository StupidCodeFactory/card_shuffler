require 'rails_helper'

RSpec.describe ShuffleController, type: :feature do

  before { visit '/' }

  describe '#show' do
    describe 'first visit' do

      it 'has a shuffle button' do
        expect(page).to have_css('input[type="submit"][value="Shuffle a new deck!"]')
      end

      it 'has a welcome message' do
        expect(page).to have_css('p.text-center', text: 'Welcome the Shuffle app')
      end

    end
  end

end
