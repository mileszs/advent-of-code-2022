require_relative './elves_calorie_collection'

class List
  def initialize(file = 'list.txt')
    @file = file
  end

  def process
    @elves_totals = ElvesCalorieCollection.new
    elf_counter = 0

    IO.readlines('list.txt', chomp: true).each do |line|
      elf_counter += 1 if line == ''

      @elves_totals[elf_counter] += line.to_i
    end
  end

  def result
    @elves_totals
  end
end
