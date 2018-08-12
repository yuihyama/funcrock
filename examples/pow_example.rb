#!/usr/bin/env ruby

require './lib/pow'

puts pow(2, 3) # => 8

puts pow(-2, 3) # => -8

puts pow(2.2, 3.3) # => 13.489468760533386

puts pow(2.0, 4) # => 16.0

puts pow(2, -1) # => 1/2

p pow(2, -1) # => (1/2)

puts pow(2, -1.0) # => 0.5

n_ary = [[2, 3], [-2, 3]]
n_ary.each { |x, y| puts pow(x, y) }
# =>
# 8
# -8

n_ary.each do |x, y|
  puts pow(x, y)
end
# =>
# 8
# -8
