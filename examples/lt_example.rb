#!/usr/bin/env ruby

require './lib/lt'

puts lt(1, 2) # => true

puts lt(2, 1) # => false

n_ary = [[1, 2], [2, 1]]
n_ary.each { |x, y| puts lt(x, y)}
# =>
# true
# false
