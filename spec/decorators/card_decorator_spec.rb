require 'rails_helper'

RSpec.describe CardDecorator do
  subject { described_class.new(Card.new('c1')) }

  describe '#image_file_name' do
    it 'adds the image extension' do
      expect(subject.image_file_name).to eq('c1.gif')
    end

    it 'can have a custom extension' do
      expect(subject.image_file_name('jpg')).to eq('c1.jpg')
    end
  end

end
