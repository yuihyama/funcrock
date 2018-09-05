#!/usr/bin/env ruby

require './lib/abs'

puts abs(0) # => 0

puts abs(1) # => 1

puts abs(-1) # => 1

puts abs(-1.0) # => 1.0

puts abs(-1.1) # => 1.1

my_ary = []
(-5..5).each { |n| my_ary << abs(n) }
print my_ary, "\n" # => [5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5]
