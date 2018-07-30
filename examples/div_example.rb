#!/usr/bin/env ruby

require './lib/div'

# puts div(1, 0) # => divided by 0 (ZeroDivisionError)

puts div(1, 2) # => 0

puts div(1.0, 2) # => 0.5

puts div(4, 2) # => 2

puts div(4, 2) + div(6, 2) # => 5

puts div(4, 2) - div(6, 2) # => -1

puts div(4, 2) * div(6, 2) # => 6

puts div(4, 2) / div(6, 2) # => 0

puts div(4.0, 2) / div(6, 2) # => 0.6666666666666666

puts div(4.0r, 2) / div(6, 2) # => 2/3

10.times { puts div(6, 2) }
# =>
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
# 3
