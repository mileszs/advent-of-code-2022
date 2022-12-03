require_relative './list'

list = List.new
list.process

puts "Max: #{list.result.max}"
