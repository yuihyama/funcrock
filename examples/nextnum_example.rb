#!/usr/bin/env ruby

require './lib/nextnum'

puts nextnum(1) # => 2

puts nextnum(1.1) # => 1.2000000000000002

puts nextnum(1.2) # => 1.3

(-5..5).each { |n| puts nextnum(n) }
# =>
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
# 6
