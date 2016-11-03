class Knight

  def initialize
    @name = "K"
    @position = [7,0]
  end

  def valid?
    false unless ( 0 < @position[0] < 7 && 0 < @position[1] < 7)
  end

class ChessBoard

  def initialize
    @graph =  [ ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"],
                ["x", "x", "x", "x", "x", "x", "x", "x"] ]
  end
end

x = ChessBoard.new



  # def print_draw
  #   puts "   a  b  c  d  e  f  g  h "
  #   puts ""
  #   puts "8"
  #   puts ""
  #   puts "7"
  #   puts ""
  #   puts "6"
  #   puts ""
  #   puts "5"
  #   puts ""
  #   puts "4"
  #   puts ""
  #   puts "3"
  #   puts ""
  #   puts "2"
  #   puts ""
  #   puts "1"
  #   puts ""
  #   puts "   a  b  c  d  e  f  g  h "
  # end
