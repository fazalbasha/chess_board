class Piece
  attr_accessor :position

  def initialize(position, name)
    @position = position
    @name = name
  end

  def moves(board)
    piece = Object.const_get(@name)
    positions = []
    piece.directions.each do |key, value|
      result = (@name == "Knight") ? get_valid_positions_for_knight(value, board.size) : get_valid_positions(value, board.size)
      positions << result
    end

    movable_positions = []
    positions.flatten(1).each do |b|
      movable_positions << board.cell[b[0] - 1][b[1] - 1]
    end
    puts "\nTotal movable positions from your choosen position for the given piece #{piece} are: \n\n#{movable_positions.join(', ')}"
    puts "\n"
  end

  def get_valid_positions(direction, size)
    positions = []
    tile_spot = [(@position[0] + direction[0]), (@position[1] + direction[1])]
    while movable_position?(tile_spot, size)
      positions << tile_spot
      tile_spot = [(tile_spot[0] + direction[0]), (tile_spot[1] + direction[1])]
    end
    positions
  end

  def get_valid_positions_for_knight(direction, size)
    positions = []
    tile_spot = [(@position[0] + direction[0]), (@position[1] + direction[1])]
    if movable_position?(tile_spot, size)
      positions << tile_spot
      tile_spot = [(tile_spot[0] + direction[0]), (tile_spot[1] + direction[1])]
    end
    positions
  end

  def movable_position?(spot, size)
    spot.any? { |x| x < 1 || x > size } ? false : true
  end
end
