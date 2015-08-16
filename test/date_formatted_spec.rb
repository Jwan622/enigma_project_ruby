require_relative "../lib/date_formatter"
require 'time'

describe "DateFormatter" do
  it "can format today's date to a 6 digit date" do
    todays_date = Time.parse("2013-03-04")
    year = todays_date.strftime("%y")
    month = todays_date.strftime("%m")
    day = todays_date.strftime("%d")
    formatted_date = DateFormatter.calculateDDMMYY(todays_date)

    expect(formatted_date).to eql(day + month + year)
  end
end
