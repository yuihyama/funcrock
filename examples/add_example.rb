#!/usr/bin/env ruby

require './lib/add'

puts add(1, 2) # => 3

puts add(1, 2) + add(3, 4) # => 10

puts add(1, 2) - add(3, 4) # => -4

puts add(1, 2) * add(3, 4) # => 21

puts add(5, 5) / add(1, 1) # => 5

puts add(7.5, 7.5) / add(1.5, 1.5) # => 5.0

10.times { puts add(1, 2) }
# =>
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
