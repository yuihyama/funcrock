#!/usr/bin/env ruby

require './lib/factorial'

puts factorial(-1) # => 0

puts factorial(0) # => 1

puts factorial(1) # => 1

puts factorial(4) # => 24

puts factorial(10.0) # => 3628800

(1..10).each { |n| puts factorial(n) }
# =>
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880
# 3628800
