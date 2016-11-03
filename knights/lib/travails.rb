require 'knights'
require 'board'

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

# def request_start
#   begin
#     print "Where would you like to start?  "
#     start = gets.chomp
#   # print "Where would you like to go?  "
#   # destination = gets.chomp
#   until validate_point(start) == true
# end

def validate_point(point)
  valid = false
  if point.length > 2 || point.length < 2
    valid
  else
    valid = true
  end
end
