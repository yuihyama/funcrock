#!/usr/bin/env ruby

require './lib/mean'

puts mean([1, 2, 3]) # => 2.0

puts mean([1.0, 2, 3]) # => 2.0

puts mean([-1, 2, 3]) # => 1.3333333333333333

n_ary = [[1, 2, 3], [1.0, 2, 3], [-1, 2, 3]]
n_ary.each { |nums| puts mean(nums) }
# =>
# 2.0
# 2.0
# 1.3333333333333333
