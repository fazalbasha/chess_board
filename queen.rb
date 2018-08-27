class Queen < Piece

  def directions
    queen_directions = Bishop.new.directions
    queen_directions.merge(Rook.new.directions)
  end

end
