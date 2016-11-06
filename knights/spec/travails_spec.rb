require 'travails.rb'

describe Travails do

  let (:travails) { Travails.new }

  # describe "#validate_coord" do
  #   it "returns FALSE when points are not 2 characters" do
  #     point = "a"
  #     expect(travails.validate_coord(point)).to eql(false)
  #   end
  #   it "returns TRUE when points are valid letter/number" do
  #     point = "a8"
  #     expect(travails.validate_coord(point)).to eql(true)
  #   end
  #   it "returns FALSE when points are invalid" do
  #     point = "i9"
  #     expect(travails.validate_coord(point)).to eql(false)
  #   end
  # end
  #
  # describe "#convert_coord" do
  #   it "returns a coordinate from a chess board coordinate" do
  #     point = "a8"
  #     expect(travails.convert_coord(point)).to eql([0, 0])
  #   end
  #   it "returns an array" do
  #     point = "a8"
  #     expect(travails.convert_coord(point)).to be_an(Array)
  #   end
  # end
end
