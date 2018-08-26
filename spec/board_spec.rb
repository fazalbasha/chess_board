require './board'

describe 'Board' do
  let(:board) { Board.new(8) }

  it 'should initialize board with size 8' do
    expect(board.size).to eq(8)
  end

  it 'should return cell count as 8' do
    expect(board.cell.count).to eq(8)
  end

  it 'should build board with algebraic notation' do
    expect(board.cell[0][0]).to eq("A1")
    expect(board.cell[7][7]).to eq("H8")
  end
end
