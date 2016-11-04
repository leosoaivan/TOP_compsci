require 'knights.rb'

describe KnightTree do

  let (:tree) { KnightTree.new }

  describe "#possible_moves" do
    it "returns an array of possible moves" do
      location = [7, 0]
      possibles = [[5, 1], [6, 2]]
      expect(tree.possible_moves(location)).to eql(possibles)
    end
  end

end
