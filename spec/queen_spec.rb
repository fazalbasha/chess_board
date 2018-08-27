require './piece'
require './queen'

describe 'Queen Directions' do

  it 'should return position and name of piece' do
    expect(Queen.new.directions.count).to eq(8)
    expect(Queen.new.directions[:north_east]).to eq([1, 1])
    expect(Queen.new.directions[:front]).to eq([-1, 0])
  end
end
