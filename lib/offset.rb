class Offset
  attr_reader :date,
              :offset

  def initialize(date)
    @date = date
    @offset = (("0%o" % date).to_i ** 2).to_s[-4..-1].to_i
  end

  def offset_A
    offset.to_s[0].to_i
  end
  
  def offset_B
    offset.to_s[1].to_i
  end

  def offset_C
    offset.to_s[2].to_i
  end

  def offset_D
    offset.to_s[3].to_i
  end
end
