require './piece'
require './queen'

describe 'Queen Directions' do

  it 'should return position and name of piece' do
    expect(Queen.directions.count).to eq(8)
    expect(Queen.directions[:north_east]).to eq([1, 1])
    expect(Queen.directions[:front]).to eq([-1, 0])
  end
end
