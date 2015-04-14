require 'rails_helper'

RSpec.describe CardDecorator do
  subject { described_class.new(Card.new('AC')) }

  describe '#image_file_name' do
    it 'adds the image extension' do
      expect(subject.image_file_name).to eq('AC.svg')
    end
  end

end
