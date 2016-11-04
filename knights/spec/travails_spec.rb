require 'travails.rb'

describe Travails do

  describe "#validate_coord" do
    it "returns FALSE when points are not 2 characters" do
      point = "a"
      expect(validate_coord(point)).to eql(false)
    end
    it "returns TRUE when points are valid letter/number" do
      point = "a8"
      expect(validate_coord(point)).to eql(true)
    end
    it "returns FALSE when points are invalid" do
      point = "i9"
      expect(validate_coord(point)).to eql(false)
    end
  end

  describe "#convert_coord" do
    it "returns an array coordinate from a chess board coordinate" do
      point = "a8"
      expect(convert_coord(point)).to eql([0, 0])
    end
  end
end
