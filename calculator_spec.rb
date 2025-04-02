require_relative "calculator"

RSpec.describe "calculator" do
  it "should return zero for empty string" do
    expect(add "").to eq(0)
  end
end