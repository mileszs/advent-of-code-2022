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
    (lower_bound <= other.lower_bound) &&
      (upper_bound >= other.upper_bound)
  end

  def overlaps?(other)
    overlaps_low?(other) ||
      overlaps_high?(other) ||
      fully_contains?(other) ||
      other.fully_contains?(self)
  end

  def overlaps_low?(other)
    # 2-4, 3-5
    lower_bound <= other.lower_bound && upper_bound >= other.lower_bound
  end

  def overlaps_high?(other)
    # 3-5, 2-4
    lower_bound >= other.lower_bound && lower_bound <= other.upper_bound
  end

  def to_s
    @range
  end

  def inspect
    to_s
  end
end
