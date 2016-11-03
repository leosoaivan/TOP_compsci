require './knights'
require './board'

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

system "clear"
start_message
x = Board.new
x.print_board
