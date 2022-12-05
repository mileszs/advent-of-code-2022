require_relative './section_assignment_pair'

class List
  def initialize(file = 'list.txt')
    @file = file
    @overlap_total = 0
  end

  def process
    IO.readlines(@file, chomp: true).each do |line|
      pair = SectionAssignmentPair.new(line)
      @overlap_total += 1 if pair.overlap?
    end
  end

  def result
    @overlap_total
  end
end
