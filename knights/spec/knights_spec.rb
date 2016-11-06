require 'knights.rb'

#Non-working tests saved for later re-working/re-factoring

xdescribe KnightNode do
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
