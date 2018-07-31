#!/usr/bin/env ruby

require './lib/mod'

# puts mod(0, 0) # => divided by 0 (ZeroDivisionError)

# puts mod(1, 0) # => divided by 0 (ZeroDivisionError)

puts mod(1, 2) # => 1

puts mod(2, 1) # => 0

puts mod(1.0, 2) # => 1.0

puts mod(2.0, 1.0) # => 0.0

5.times { puts mod(1, 2); puts mod(2, 1) }
# =>
# 1
# 0
# 1
# 0
# 1
# 0
# 1
# 0
# 1
# 0
