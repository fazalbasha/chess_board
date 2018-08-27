class Rook < Piece

  def directions
    {
      front: [-1, 0],
      back: [1, 0],
      left: [0, -1],
      right: [0, 1]
    }
  end

end
