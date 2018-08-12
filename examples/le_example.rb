#!/usr/bin/env ruby

require './lib/le'

puts le(1, 2) # => true

puts le(2, 1) # => false

n_ary = [[1, 2], [2, 1], [1.0, 2.0], [2.0, 1.0]]
n_ary.each { |x, y| puts le(x, y) }
# =>
# true
# false
# true
# false
