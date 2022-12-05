require_relative './list'

# 761 is too low

list = List.new
list.process

puts "Total: #{list.result}"
