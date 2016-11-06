require_relative '../lib/knights'
require_relative '../lib/board'
require 'pry'

class Travails

  BOARD_MAP = {
    "a" => 0,
    "b" => 1,
    "c" => 2,
    "d" => 3,
    "e" => 4,
    "f" => 5,
    "g" => 6,
    "h" => 7
  }

  def initialize
    system "clear"
    @board = Board.new
    @start = nil
    @dest = nil
    @knight = nil
    @graph = nil
    @path_array = []
    @path_coord = []
    game_start
  end

  def game_start
    @board.start_message
    @board.print_board
    request_start
    request_dest
    create_knight
    create_graph
    create_path
    convert_array
    binding
    display_path
  end

  def request_start
    begin
      print "Where would you like to start?  "
      start = gets.chomp.downcase
    end until validate_coord(start) == true
    @start = convert_coord(start[0..1])
  end

  def request_dest
    begin
      print "Where would you like to go?  "
      dest = gets.chomp.downcase
      puts
    end until validate_coord(dest) == true
    @dest = convert_coord(dest[0..1])
  end

  def validate_coord(coordinate)
    point = coordinate.split(//)
    if /[a-h]/.match(point[0]) && /[1-8]/.match(point[1])
      true
    else
      false
    end
  end

  def convert_coord(coordinate)
    x, y = coordinate.split(//)
    return ((y.to_i - 8).abs), (BOARD_MAP["#{x}"])
  end

  def create_knight
    @knight = KnightNode.new(@start)
  end

  def create_graph
    @graph = KnightGraph.new(@knight)
  end

  def create_path
    @graph.build_graph
    @graph.search_graph(@dest)
    @path_array = @graph.print_path
  end

  def convert_array
    @path_array.each do |elem|
      x, y = elem[0], elem[1]
      x = (x - 8).abs.to_s
      y = (BOARD_MAP.key(y)).to_s
      @path_coord << (y + x)
    end
  end

  def display_path
    path = "Your path is #{@path_coord[0]} "
    @path_coord[1..-1].each do |elem|
      path += "=> #{elem} "
    end
    puts path
  end
end

x = Travails.new
