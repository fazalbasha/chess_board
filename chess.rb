require 'terminal-table'
require 'pry'
require_relative 'board'
require_relative 'piece'
require_relative 'bishop'
require_relative 'rook'
require_relative 'knight'
require_relative 'queen'

class Chess
  def self.play
    puts "\nWelcome to Chess Board"
    puts "\nFind out the movable positions of your selected Piece from the board with size of your choice!"
    print "\nEnter board size: "
    n = gets.chomp.to_i

    @board = Board.new(n)
    tiles_data = @board.fill_tiles
    @board.build_terminal_table(tiles_data.keys)

    name = self.piece_name
    print "\nEnter piece position: "
    str = gets.chomp.gsub(/\s+/, "").upcase
    char = str[0]
    pos = str[1].to_i
    piece = Object.const_get(name)
    piece = piece.new([pos, tiles_data[char]])
    piece.moves(@board)
  end

  def self.piece_name
    puts "\nAvailable pieces are listed below:"
    puts "1. Queen\n2. Knight\n3. Bishop\n4. Rook\nPlease choose any one"
    print "\nEnter piece name: "
    name = gets.chomp.gsub(/\s+/, "").capitalize
    if self.check_piece_availability(name)
      return name
    else
      puts "\nEntered Piece name is incorrect or empty. Please try again.\n"
      puts "\n"
      puts "-"*60
      piece_name
    end
  end

  def self.check_piece_availability(name)
    ['Bishop', 'Rook', 'Queen', 'Knight'].include?(name)
  end
end

Chess.play()
