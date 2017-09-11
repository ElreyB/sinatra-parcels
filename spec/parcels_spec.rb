require 'rspec'
require 'parcels'

describe 'Parcels' do
  let(:parcel1) { Parcels.new(5,5,5,9)}

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
