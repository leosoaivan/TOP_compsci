class ChessBoard

  def initialize
    @board = board
    draw
  end

  def draw
    @board = Array.new( 7 ){Array.new( 7 ) { 'pawn' } }
  end


end
