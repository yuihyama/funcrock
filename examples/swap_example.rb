#!/usr/bin/env ruby

require './lib/swap'

p swap(1, 2) # => [2, 1]

puts swap(1, 2)
# =>
# 2
# 1

puts swap(-1, 2.0)
# =>
# 2.0
# -1

puts swap('a', 'b')
# =>
# b
# a

require './lib/add'
require './lib/println'
println(add(swap(1, 2), swap(3, 4))) # => 2 1 4 3
println(add(add(swap(1, 2), swap(3, 4)), swap(5, 6))) # => 2 1 4 3 6 5

print add(swap(1, 2), swap(3, 4)), "\n" # => [2, 1, 4, 3]
print add(add(swap(1, 2), swap(1, 2)), swap(1, 2)), "\n" # => [2, 1, 2, 1, 2, 1]
