class Rotator
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def rotation_a_value
    key.to_s[0,2].to_i
  end

  def rotation_b_value
    key.to_s[1,2].to_i
  end

  def rotation_c_value
    key.to_s[2,2].to_i
  end

  def rotation_d_value
    key.to_s[3,2].to_i
  end
end
