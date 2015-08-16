# require "rspec"
require_relative "../lib/rotator"

describe "Rotator" do
  attr_reader :rotator

  before :each do
    key = 23456
    @rotator = Rotator.new(key)
  end

  it "rotator class accepts a key" do
    expect(rotator.key).to eql(23456)
  end

  it "#rotation_a_value method points to the corresponding value" do
    expect(rotator.rotation_a_value).to eql(23)
  end

  it "#rotation_b_value method points to the corresponding value" do
    expect(rotator.rotation_b_value).to eql(34)
  end

  it "#rotation_c_value method points to the corresponding value" do
    expect(rotator.rotation_c_value).to eql(45)
  end

  it "#rotation_d_value method points to the corresponding value" do
    expect(rotator.rotation_d_value).to eql(56)
  end
end
