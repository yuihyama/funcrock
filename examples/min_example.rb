#!/usr/bin/env ruby

require './lib/min'

puts min(1, 2, 3) # => 1

puts min(*[1, 2, 3]) # => 1

my_ary1 = [1, 2, 3]
puts min(*my_ary1) # => 1

my_ary2 = [[1, 2, 3], [4, 3, 2, 1], [1, 3, 2, 5.0, 4], [-1, -2, -3]]
my_ary2.each { |a| puts min(*a) }
# =>
# 1
# 1
# 1
# -3
