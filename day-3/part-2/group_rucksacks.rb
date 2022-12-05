require_relative './item'

class GroupRucksacks
  def initialize(lists)
    @elf1, @elf2, @elf3 = lists
  end

  def priority
    Item.new(badge_type).priority_value
  end

  def badge_type
    (@elf1.split('') & @elf2.split('') & @elf3.split('')).first
  end
end
