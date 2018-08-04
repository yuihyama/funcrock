#!/usr/bin/env ruby

require './lib/cube'

puts cube(2) # => 8

puts cube(-2) # => -8

puts cube(2.0) # => 8.0

puts cube(-2.0) # => -8.0

puts cube(3.3) # => 35.937

puts cube(-3.3) # => -35.937

(0..10).each { |n| puts cube(n) }
# =>
# 0
# 1
# 8
# 27
# 64
# 125
# 216
# 343
# 512
# 729
# 1000
