require 'knights.rb'

describe KnightNode do
  let (:knight) { KnightNode.new([7,0]) }

  describe "#new" do
    it "allows reading/writing to location" do
      expect(knight.location).to eql([7, 0])
    end
  end

  describe "#find_children" do
    it "finds a knight's possible moves" do
      expect(knight.children).to eql([[5,1], [6,2]])
    end
  end
end
#
# describe KnightGraph do
#
#   let (:knight) { KnightNode.new([7,0]) }
#
#   let (:tree) { KnightGraph.new(knight) }
#
#   describe "#possible_moves" do
#     it "returns possible moves" do
#       location = [7, 0]
#       possibles = [[5, 1], [6, 2]]
#       expect(tree.possible_moves(location)).to eql(possibles)
#     end
#     it "returns an array" do
#       location = [7, 0]
#       possibles = [[5, 1], [6, 2]]
#       expect(tree.possible_moves(location)).to be_an(Array)
#     end
#   end
#
# end
