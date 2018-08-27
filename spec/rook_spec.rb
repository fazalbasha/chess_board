require './piece'
require './rook'

describe 'Rook Directions' do

  it 'should return position and name of piece' do
    expect(Rook.new.directions.count).to eq(4)
    expect(Rook.new.directions[:front]).to eq([-1, 0])
  end
end
