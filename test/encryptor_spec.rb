require_relative "../lib/encrypt"

describe "Encrypt" do
  attr_reader :encryptor

  before :each do
    @encryptor = Encryptor.new
  end

  it "#char_map returns us the character map" do
    expect(encryptor.char_map).to eql(["a", "b", "c", "d", "e", "f", "g", "h",
      "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
      "x", "y", "z", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, " ", ".", ","])
  end

  it "#encrypt method can encrypt a 4 letter string" do
    expect(encryptor.encrypt("abcd", 82648, 030415)).to eql("g33r")
  end

  it "#encrypt method can encrypt a 9 letter string" do
    expect(encryptor.encrypt("abcd efgh", 82648, 030415)).to eql("g33rd66un")
  end

  it "#encrypt method can encrypt a 10 letter string" do

  end
end
