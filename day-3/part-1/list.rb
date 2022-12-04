require_relative './rucksack_contents'

class List
  def initialize(file = 'list.txt')
    @file = file
    @total = 0
  end

  def process
    rucksacks = IO.readlines('list.txt', chomp: true).map do |line|
      RucksackContents.new(line).priorities_sum
    end

    @total = rucksacks.sum
  end

  def result
    @total
  end
end
