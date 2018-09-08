#!/usr/bin/env ruby

require './lib/notdivisor_count'

# require './lib/notdivisors'
# p notdivisors(12) # => [5, 7, 8, 9, 10, 11]: size or length 6
#
puts notdivisor_count(12) # => 6

(0..10).each { |n| puts notdivisor_count(n) }
# =>
# 0
# 0
# 0
# 1
# 1
# 3
# 2
# 5
# 4
# 6
# 6
