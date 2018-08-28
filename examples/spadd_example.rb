#!/usr/bin/env ruby

require './lib/spadd'

puts spadd(start = 1, stop = 10) # => 55
puts spadd(1, 10) # => 55

puts spadd(-1, 10) # 54

n_ary = [[1, 10], [1, 100], [1, 1000]]

n_ary.each { |start, stop| puts spadd(start, stop) }
# =>
# 55
# 5050
# 500500
