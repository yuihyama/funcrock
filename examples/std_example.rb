#!/usr/bin/env ruby

# standard deviation:
# std(n_ary, degree_of_freedom = 0)

require './lib/std'

n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]
puts std(n_ary) # => 2.569046515733026
puts std(n_ary, degree_of_freedom = 1) # => 2.70801280154532
puts std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1).round(3) # => 2.708
