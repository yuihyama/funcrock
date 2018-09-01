#!/usr/bin/env ruby

require './lib/antenum'

puts antenum(1) # => 0

puts antenum(0) # => -1

puts antenum(-1) # => -2

puts antenum(1.3) # => 1.2

puts antenum(1.2) # => 1.0999999999999999

puts antenum(-1.0) # => -1.1

(-5..5).each { |n| puts antenum(n) }
# =>
# -6
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
