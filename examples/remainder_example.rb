#!/usr/bin/env ruby

require './lib/remainder'

puts remainder(7, 2) # => 1

puts remainder(7.0, 2) # => 1.0

puts remainder(7, 2.0) # => 1.0

puts remainder(7.0, 2.0) # => 1.0

puts remainder(-7, 2) # => -1

puts remainder(7, -2.0) # => 1.0
