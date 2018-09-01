#!/usr/bin/env ruby

require './lib/perm'

puts perm(10, 3) # => 720

puts perm(8, 4) # => 1680

puts perm(7, 1) # => 7

puts perm(5, 5) # => 120

puts perm(5.0, 5) # => 120

puts perm(0, 0) # => 1 # (0! = 1)

puts perm(0, 1) # => 0

puts perm(1, 0) # => 1

puts perm(-5, 5) # => 0

puts perm(5, -5) # => 0

puts perm(-5, -5) # => 0
