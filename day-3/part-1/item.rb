class Item
  CAPITAL_ADJUSTMENT = -38
  LOWERCASE_ADJUSTMENT = -96

  def initialize(char)
    @char = char
  end

  def priority_value
    return upper_value if upper?

    lower_value
  end

  private

  def upper?
    @char == @char.upcase
  end

  def lower?
    @char = @char.downcase
  end

  def upper_value
    @char.ord + CAPITAL_ADJUSTMENT
  end

  def lower_value
    @char.ord + LOWERCASE_ADJUSTMENT
  end
end
