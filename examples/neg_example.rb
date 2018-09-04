#!/usr/bin/env ruby

require './lib/neg'

puts neg(1) # => -1

puts neg(1.0) # => -1.0

puts neg(-1.0) # => 1.0

(-5..5).each { |n| puts neg(n) }
# =>
# 5
# 4
# 3
# 2
# 1
# 0
# -1
# -2
# -3
# -4
# -5
