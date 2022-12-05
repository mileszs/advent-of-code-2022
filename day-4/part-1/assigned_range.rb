class AssignedRange
  def initialize(range)
    @range = range
  end

  def lower_bound
    @range.split('-')[0].to_i
  end

  def upper_bound
    @range.split('-')[1].to_i
  end

  def fully_contains?(other)
    lower_bound <= other.lower_bound &&
      upper_bound >= other.upper_bound
  end

  def to_s
    @range
  end

  def inspect
    to_s
  end
end
