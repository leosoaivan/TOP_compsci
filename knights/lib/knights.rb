class KnightNode

  def initialize(location)
    @location = nil
    @children = []
  end

end

class KnightTree

  KNIGHT_MOVES = [
    [-2, 1], [-2, -1], [-1, 2], [-1, -2],
    [1, -2], [1, 2], [2, 1], [2, -1]
  ]

  def initialize
  end

  def possible_moves(location)
    possibles = []
    KNIGHT_MOVES.each do |move|
      possible = [location[0] + move[0], location[1] + move[1]]
      if valid_moves(possible)
        possibles << possible
      end
    end
    possibles
  end

  def valid_moves(possible)
    true if (possible[0] >= 0 && possible[0] <= 7) && (possible[1] >= 0 && possible[1] <= 7)
  end

end
