require "time"

class TimeParser
  def self.parse(current_time)
    day_formatted = current_time.strftime("%d")
    month_formatted = current_time.strftime("%m")
    year_formatted = current_time.strftime("%y")

    date_formatted = day_formatted + month_formatted + year_formatted
  end
end
