require 'rspec'
require 'parcel'

describe 'Parcel' do
  let(:parcel1) { Parcel.new(5,5,5,9,"overnight")}
  let(:parcel2) { Parcel.new(5,5,5,15,"two todays")}
  let(:parcel3) { Parcel.new(5,5,5,35,"standard")}
  let(:parcel4) { Parcel.new(5,5,5,35,"sameday")}

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
      expect(parcel1.delivery_cost).to eq 25
    end

    it 'will return delivery cost' do
      expect(parcel2.delivery_cost).to eq 15
    end

    it 'will return delivery cost' do
      expect(parcel3.delivery_cost).to eq 5
    end

    it 'will return delivery error' do
      expect(parcel4.delivery_cost).to eq "Limited shipping option. Plaese choose: overnight, two todays, or standard."
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

  describe '#cost_to_ship' do
    it 'return shipping cost' do
      expect(parcel1.cost_to_ship).to eq 280
    end

    it 'return shipping cost' do
      expect(parcel2.cost_to_ship).to eq 275
    end

    it 'return shipping cost' do
      expect(parcel3.cost_to_ship).to eq 270
    end
  end

end
