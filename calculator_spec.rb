require_relative "calculator"

RSpec.describe "add calculator" do
  it "should return zero for empty string" do
    expect(add "").to eq(0)
  end

  it "should add all numbers in comma seperated string" do
    expect(add "4, 5").to eq(9)
  end

  it "should add any number of comma seperated string" do
    expect(add "4, 5, 7, 1").to eq(17)
  end

  it "should allow for new line character as delimiter" do
    expect(add "1\n2,3").to eq(6)
    expect(add "3\n 4 \n  8").to eq(15)
  end
end