require_relative '../lib/knights'
require_relative '../lib/board'

class Travails
  def initialize
    @board = Board.new
  end

  def game_start
    system "clear"
    start_message
    @board.print_board
  end

end

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

def request_start
  begin
    print "Where would you like to start?  "
    start = gets.chomp.downcase
  end until validate_coord(start) == true
  @start = start[0..1]
  puts "Your starting point is #{start}."
end

def request_dest
  begin
    print "Where would you like to go?  "
    dest = gets.chomp.downcase
  end until validate_coord(dest) == true
  @dest = dest[0..1]
  puts "Your destination point is #{dest}."
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
