class Bishop < Piece
  def directions
    {
      north_east: [1, 1],
      north_west: [-1, 1],
      south_east: [1, -1],
      south_west: [-1, -1]
    }
  end
end
