require 'rspec'
require 'parcels'

describe 'Parcels' do
  let(:parcel1) { Parcels.new(5,5,5,9)}

  describe '#initialize' do
    it 'has a readable length' do
      expect(parcel1.length).to eq 5
    end

    it 'has a readable width' do
      expect(parcel1.width).to eq 5
    end

    it 'has a readable height' do
      expect(parcel1.height).to eq 5
    end

    it 'has a readable weight' do
      expect(parcel1.weight).to eq 9
    end
  end

  describe '#volume' do
    it 'will return the product of the side' do
      expect(parcel1.volume).to eq 125
    end
  end

end
