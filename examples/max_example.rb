#!/usr/bin/env ruby

require './lib/max'

puts max(1, 2, 3) # => 3

puts max(*[1, 2, 3]) # => 3

my_ary1 = [1, 2, 3]
puts max(*my_ary1) # => 3

my_ary2 = [[1, 2, 3], [4, 3, 2, 1], [1, 3, 2, 5.0, 4], [-1, -2, -3]]
my_ary2.each { |a| puts max(*a) }
# =>
# 3
# 4
# 5.0
# -1
