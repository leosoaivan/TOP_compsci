require './knights'
require './board'

class Travails
  def initialize
    system "clear"
    start_message
    board = Board.new
    board.print_board
  end
end

def start_message
  puts "*********************************************************************"
  puts "*                       KNIGHT'S TRAVAILS                           *"
  puts "*                                                                   *"
  puts "*      Welcome to a command line implementation of a chess          *"
  puts "*   knight's travails. Below is a chess board. Choose an initial    *"
  puts "*    starting point (e.g., a1) and a destination point (e.g. d5).   *"
  puts "*          The path to your destination will be printed out!        *"
  puts "*********************************************************************"
  puts
end

def request_start
  begin
    print "Where would you like to start?  "
    start = gets.chomp.downcase
  end until validate_point(start) == true
  start = start[0..1]
  puts "Your starting point is #{start}."
end

def request_dest
  begin
    print "Where would you like to go?  "
    dest = gets.chomp.downcase
  end until validate_point(dest) == true
  dest = dest[0..1]
  puts "Your destination point is #{dest}."
end

def validate_point(point)
  coord = point.split(//)
  if /[a-h]/.match(coord[0]) && /[1-8]/.match(coord[1])
    true
  else
    puts "That is not a valid move."
    false
  end
end

x = Travails.new

request_start
