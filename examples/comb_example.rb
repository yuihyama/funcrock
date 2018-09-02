#!/usr/bin/env ruby

require './lib/comb'

puts comb(10, 3) # => 120

puts comb(8, 4) # => 70

puts comb(8, 3) # => 56

puts comb(7, 1) # => 7

puts comb(5, 5) # => 1

puts comb(5.0, 5) # => 1

puts comb(0, 0) # => 1

puts comb(0, 1) # => 0

puts comb(1, 0) # => 1

puts comb(-5, 5) # => 0

puts comb(5, -5) # => 0

puts comb(-5, -5) # => 0
