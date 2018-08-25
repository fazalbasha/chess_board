class Queen < Piece

  def self.directions
    queen_directions = Bishop.directions
    queen_directions.merge(Rook.directions)
  end

end
