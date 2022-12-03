class Throw
  def initialize(shape)
    @shape = shape
  end

  def score
    {
      'Rock' => 1,
      'Paper' => 2,
      'Scissors' => 3
    }[@shape]
  end

  def to_s
    @shape
  end

  def ==(other)
    to_s == other.to_s
  end
end
