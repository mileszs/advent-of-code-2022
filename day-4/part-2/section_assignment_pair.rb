require_relative './assigned_range'

class SectionAssignmentPair
  def initialize(pair)
    @pair = pair
    @first = AssignedRange.new(@pair.split(',')[0])
    @second = AssignedRange.new(@pair.split(',')[1])
  end

  def fully_contained?
    @first.fully_contains?(@second) || @second.fully_contains?(@first)
  end

  def overlap?
    @first.overlaps?(@second)
  end

  def to_s
    "#{@first}, #{@second}"
  end
end
