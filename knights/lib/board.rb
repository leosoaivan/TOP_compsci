class Board
  attr_accessor :c

  def initialize
    @c = [
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
      [" "," "," "," "," "," "," "," "],
    ]
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
    print "8 |"
    @c[0].each { |elem| print " #{elem} |" }
    puts " 8 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "7 |"
    @c[1].each { |elem| print " #{elem} |" }
    puts " 7 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "6 |"
    @c[2].each { |elem| print " #{elem} |" }
    puts " 6 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "5 |"
    @c[3].each { |elem| print " #{elem} |" }
    puts " 5 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "4 |"
    @c[4].each { |elem| print " #{elem} |" }
    puts " 4 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "3 |"
    @c[5].each { |elem| print " #{elem} |" }
    puts " 3 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "2 |"
    @c[6].each { |elem| print " #{elem} |" }
    puts " 2 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    print "1 |"
    @c[7].each { |elem| print " #{elem} |" }
    puts " 1 \n"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "    a   b   c   d   e   f   g   h \n\n"
  end

  def write_board(array)
    counter = 1
    array.each do |elem|
      @c[elem[0]][elem[1]] = counter
      counter += 1
    end
  end

end
