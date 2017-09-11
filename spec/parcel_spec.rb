require 'rspec'
require 'parcel'

describe 'Parcel' do
  let(:parcel1) { Parcel.new(5,5,5,9)}
  let(:parcel2) { Parcel.new(5,5,5,15)}
  let(:parcel3) { Parcel.new(5,5,5,35)}

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

  describe '#speed_of_delivery' do
    it 'will return delivery cost' do
      expect(parcel1.delivery_cost("overnight")).to eq 25
    end

    it 'will return delivery cost' do
      expect(parcel1.delivery_cost("two todays")).to eq 15
    end

    it 'will return delivery cost' do
      expect(parcel1.delivery_cost("standard")).to eq 5
    end

    it 'will return delivery error' do
      expect(parcel1.delivery_cost("sameday")).to eq "Limited shipping option. Plaese choose: overnight, two todays, or standard."
    end
  end

  describe '#weight_cost' do
    it 'will return weight cost base of @weight' do
      expect(parcel1.weight_cost).to eq 5
    end

    it 'will return weight cost base of @weight' do
      expect(parcel2.weight_cost).to eq 10
    end

    it 'will return weight cost base of @weight' do
      expect(parcel3.weight_cost).to eq 15
    end
  end
  # describe '#cost_to_ship' do
  #   it 'return shipping cost' do
  #     expect(parcel1.cost_to_ship),to eq
  #   end
  # end

end
