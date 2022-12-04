# Read lines (1 for each rucksack)
# Split in half (1 half for each compartment)
# Find characters in common between the two "compartments" -- Set?
#
# Total: 8240

require_relative './list'

CAPITAL_ADJUSTMENT = -38
LOWERCASE_ADJUSTMENT = -96


list = List.new
list.process

puts "Total: #{list.result}"
