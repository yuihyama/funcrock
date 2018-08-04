#!/usr/bin/env ruby

require './lib/square'

puts square(2) # => 4

puts square(-2) # => 4

n_arry = [0, 1, -1.0, 2, 3.3, 4.0]
n_arry.each { |n| puts square(n) }
# =>
# 0
# 1
# 1.0
# 4
# 10.889999999999999
# 16.0
