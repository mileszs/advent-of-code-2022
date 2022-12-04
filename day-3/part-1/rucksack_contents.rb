require_relative './item'

class RucksackContents
  def initialize(list)
    @list = list
  end

  def priorities_sum
    common_items.sum do |char|
      Item.new(char).priority_value
    end
  end

  def compartment_one
    separated_items[0]
  end

  def compartment_two
    separated_items[1]
  end

  def common_items
    compartment_one.split('') & compartment_two.split('')
  end

  private

  def separated_items
    @list.chars.each_slice(@list.length / 2).map(&:join)
  end
end
