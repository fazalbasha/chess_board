require './piece'
require './bishop'

describe 'Bishop Directions' do

  it 'should return position and name of piece' do
    expect(Bishop.directions.count).to eq(4)
    expect(Bishop.directions[:north_east]).to eq([1, 1])
  end
end
