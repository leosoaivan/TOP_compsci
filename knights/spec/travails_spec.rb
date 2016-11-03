require 'travails.rb'

describe "#validate_point" do
  it "returns FALSE when points are not 2 characters" do
    point = "a"
    expect(validate_point(point)).to eql(false)
  end
  it "returns TRUE when points are valid letter/number" do
    point = "a8"
    expect(validate_point(point)).to eql(true)
  end
  it "returns FALSE when points are invalid" do
    point = "i9"
    expect(validate_point(point)).to eql(false)
  end
end
