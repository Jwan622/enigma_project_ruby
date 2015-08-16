require_relative "../lib/offset"

describe "Offset" do
  attr_reader :offsetter

  before :each do
    date = 020315
    @offsetter = Offset.new(date)
  end

  it "#date method returns us the date" do
    expect(@offsetter.date).to eql(020315)
  end

  it "#offset method returns us the last 4 digits of the squared date" do
    expect(@offsetter.offset).to eql(9225)
  end

  it "#offset_A returns us the A offset" do
    expect(@offsetter.offset_A).to eql(9)
  end

  it "#offset_B returns us the B offset" do
    expect(@offsetter.offset_B).to eql(2)
  end

  it "#offset_C returns us the C offset" do
    expect(@offsetter.offset_C).to eql(2)
  end

  it "#offset_D returns us the D offset" do
    expect(@offsetter.offset_D).to eql(5)
  end
end
