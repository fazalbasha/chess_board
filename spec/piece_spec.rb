require './board'
require './piece'
require './bishop'
require './rook'
require './knight'
require './queen'

describe 'Piece' do
  let(:board) { Board.new(8) }

  describe 'Bishop Piece' do
    let(:piece_bishop) { Bishop.new([2,4]) }

    it 'should return position and name of piece' do
      expect(piece_bishop.position).to eq([2,4])
      expect(piece_bishop.class.name).to eq("Bishop")
    end

    it 'should return possible moves' do
      expect(piece_bishop.moves(board).count).to eq(9)
      expect(piece_bishop.moves(board)).to eq(["E3", "F4", "G5", "H6", "E1", "C3", "B4", "A5", "C1"])
    end

    it 'should return possible positions for the given direction and size' do
      expect(piece_bishop.get_valid_positions([1,1], 8)).to eq([[3, 5], [4, 6], [5, 7], [6, 8]])
    end
  end

  describe 'Rook Piece' do
    let(:piece_rook) { Rook.new([2,4]) }

    it 'should return position and name of piece' do
      expect(piece_rook.position).to eq([2,4])
      expect(piece_rook.class.name).to eq("Rook")
    end

    it 'should return possible moves' do
      expect(piece_rook.moves(board).count).to eq(14)
      expect(piece_rook.moves(board)).to eq(["D1", "D3", "D4", "D5", "D6", "D7", "D8", "C2", "B2", "A2", "E2", "F2", "G2", "H2"])
    end

    it 'should return possible positions for the given direction and size' do
      expect(piece_rook.get_valid_positions([-1,0], 8)).to eq([[1, 4]])
    end
  end

  describe 'Knight Piece' do
    let(:piece_knight) { Knight.new([1,1]) }

    it 'should return position and name of piece' do
      expect(piece_knight.position).to eq([1,1])
      expect(piece_knight.class.name).to eq("Knight")
    end

    it 'should return possible moves' do
      expect(piece_knight.moves(board).count).to eq(2)
      expect(piece_knight.moves(board)).to eq(["C2", "B3"])
    end

    it 'should return possible positions for the given direction and size' do
      expect(piece_knight.get_valid_positions([-1,2], 8)).to eq([])
    end
  end

  describe 'Queen Piece' do
    let(:piece_queen) { Queen.new([1,1]) }

    it 'should return position and name of piece' do
      expect(piece_queen.position).to eq([1,1])
      expect(piece_queen.class.name).to eq("Queen")
    end

    it 'should return possible moves' do
      expect(piece_queen.moves(board).count).to eq(21)
      expect(piece_queen.moves(board)).to eq(["B2", "C3", "D4", "E5", "F6", "G7", "H8", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "B1", "C1", "D1", "E1", "F1", "G1", "H1"])
    end

    it 'should return possible positions for the given direction and size' do
      expect(piece_queen.get_valid_positions([1,0], 8)).to eq([[2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1]])
      expect(piece_queen.get_valid_positions([1,1], 8)).to eq([[2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [8, 8]])
    end
  end
end
