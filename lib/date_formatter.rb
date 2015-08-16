class DateFormatter
  def self.calculateDDMMYY(todays_date)
    day_formatted = todays_date.strftime("%d")
    month_formatted = todays_date.strftime("%m")
    year_formatted = todays_date.strftime("%y")
    date_formatted = day_formatted + month_formatted + year_formatted
  end
end
