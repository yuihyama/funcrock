#!/usr/bin/env ruby

require './lib/constant'

puts constant(0) # => 0

puts constant(1) # => 1

puts constant(2.2) # => 2.2

n_ary = [0, 1, 2.2, 3.3, 100]
n_ary.each { |n| puts constant(n) }
# =>
# 0
# 1
# 2.2
# 3.3
# 100
