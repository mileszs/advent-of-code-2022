require_relative './list'

list = List.new
list.process

puts "Top Three: #{list.result.top_three_total}"
