require_relative "../lib/time_parser"

describe "TimeParser" do
  it "#parse can parse the time into a 6 digit code" do
    current_time = Time.parse("2015-03-04")
    year = current_time.strftime("%y")
    month = current_time.strftime("%m")
    day = current_time.strftime("%d")

    expect(TimeParser.parse(current_time)).to eql("040315")
  end
end
