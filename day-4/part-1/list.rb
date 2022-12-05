require_relative './section_assignment_pair'

class List
  def initialize(file = 'list.txt')
    @file = file
    @fully_contained_total = 0
  end

  def process
    IO.readlines(@file, chomp: true).each do |line|
      pair = SectionAssignmentPair.new(line)
      @fully_contained_total += 1 if pair.fully_contained?
    end
  end

  def result
    @fully_contained_total
  end
end
