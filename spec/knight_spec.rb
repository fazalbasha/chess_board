require './piece'
require './knight'

describe 'Knight Directions' do

  it 'should return position and name of piece' do
    expect(Knight.directions.count).to eq(8)
    expect(Knight.directions[:north_east]).to eq([-2, 1])
  end
end
