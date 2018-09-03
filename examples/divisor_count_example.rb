#!/usr/bin/env ruby

require './lib/divisor_count'

# require './lib/divisors'
# p divisors(12) # => [1, 2, 3, 4, 6, 12]: size or length 6
# p divisors(24) # => [1, 2, 3, 4, 6, 8, 12, 24]: size or length 8
#
puts divisor_count(12) # => 6
puts divisor_count(24) # => 8


(0..10).each { |n| puts divisor_count(n) }
# =>
# 0
# 1
# 2
# 2
# 3
# 2
# 4
# 2
# 4
# 3
# 4
