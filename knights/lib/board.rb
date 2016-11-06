class Board

  def initialize
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

  def print_board
    puts "    a   b   c   d   e   f   g   h "
    puts "  +---+---+---+---+---+---+---+---+"
    puts "8 |   |   |   |   |   |   |   |   | 8"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "7 |   |   |   |   |   |   |   |   | 7"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "6 |   |   |   |   |   |   |   |   | 6"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "5 |   |   |   |   |   |   |   |   | 5"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "4 |   |   |   |   |   |   |   |   | 4"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "3 |   |   |   |   |   |   |   |   | 3"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "2 |   |   |   |   |   |   |   |   | 2"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "1 |   |   |   |   |   |   |   |   | 1"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "    a   b   c   d   e   f   g   h "
    puts
  end

end
