#!/usr/bin/env ruby

require './lib/mul'

puts mul(1, 2) # => 2

puts mul(1, 2) + mul(3, 4) # => 14

puts mul(1, 2) - mul(3, 4) # => -10

puts mul(1, 2) * mul(3, 4) # => 24

puts mul(1, 2) / mul(3, 4) # => 0

puts mul(1.0, 2) / mul(3, 4) # => 0.16666666666666666

puts mul(0.1, 3.0) # => 0.30000000000000004

puts mul(0.1r, 3.0r) # => 3/10

10.times { puts mul(1, 2)}
# =>
# 2
# 2
# 2
# 2
# 2
# 2
# 2
# 2
# 2
# 2
