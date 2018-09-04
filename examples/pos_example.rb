#!/usr/bin/env ruby

require './lib/pos'

puts pos(1) # => 1

puts pos(1.0) # => 1.0

puts pos(-1.0) # => -1.0

(-5..5).each { |n| puts pos(n) }
# =>
# -5
# -4
# -3
# -2
# -1
# 0
# 1
# 2
# 3
# 4
# 5
