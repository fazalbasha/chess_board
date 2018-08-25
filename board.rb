class Board
  attr_reader :size
  attr_accessor :cell

  def initialize(size)
    @size = size
    @cell = build_board
  end

  def build_terminal_table(keys)
    table = Terminal::Table.new :title => "#{@size} x #{@size} ChessBoard" do |t|
      @size.times.reverse_each do |i|
        ar = []
        @size.times do |e|
          ar.push(keys[e] + (i+1).to_s)
        end
        t.add_row ar
        t.add_separator if i > 0
      end
    end
    puts"\n#{table}"
  end

  def build_board
    a = fill_tiles.keys
    @cell = Array.new(@size) { Array.new(@size) }
    @cell.each_with_index do |e, index|
      @size.times do |i|
        e[i] = a[i] + (index + 1).to_s
      end
    end
  end

  def fill_tiles
    tiles = {}
    char = "@"
    @size.times do |i|
      char = char.next
      tiles.merge!({char => i + 1})
    end
    tiles
  end

end
