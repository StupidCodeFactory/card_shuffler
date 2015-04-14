require 'rails_helper'

RSpec.describe ShuffleController, type: :controller do
  render_views

  describe '#show' do
    describe 'first visit' do

      it 'has a shuffle button' do
        get :show
        expect(response.body).to have_css('button', text: 'shufle deck')
      end

      it 'has a no deck' do
        get :show
        expect(response.body).to_not have_css('.card')
      end

    end
  end
end
