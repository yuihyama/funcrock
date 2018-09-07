#!/usr/bin/env ruby

# variance:
# var(n_ary, degree_of_freedom = 0)

require './lib/var'

n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]
puts var(n_ary) # => 6.6
puts var(n_ary, degree_of_freedom = 1) # => 7.333333333333333
puts var([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1).round(3) # => 7.333
