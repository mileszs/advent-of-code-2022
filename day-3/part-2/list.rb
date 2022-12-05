require_relative './group_rucksacks'

class List
  def initialize(file = 'list.txt')
    @file = file
    @total = 0
  end

  def process
    groups = IO.readlines('list.txt', chomp: true).each_slice(3).map do |lists|
      GroupRucksacks.new(lists).priority
    end

    @total = groups.sum
  end

  def result
    @total
  end
end
