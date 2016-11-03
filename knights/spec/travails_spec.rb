require 'travails.rb'

describe "#validate_point" do
  it "returns TRUE when points are 2 characters" do
    point = "aa"
    expect(validate_point(point)).to eql(true)
  end
  it "returns FALSE when points are not 2 characters" do
    point = "a"
    expect(validate_point(point)).to eql(false)
  end
end
