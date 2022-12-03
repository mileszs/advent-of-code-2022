class ElvesCalorieCollection
  include Enumerable

  def initialize
    @elves_totals = []
  end

  def [](id)
    @elves_totals[id] ||= 0
    @elves_totals[id]
  end

  def []=(id, number)
    @elves_totals[id] = number
  end

  def each(&block)
    @elves_totals.each(&block)
  end

  def max
    @elves_totals.max
  end

  def top_three_total
    @elves_totals.sort.reverse[0, 3].sum
  end
end
