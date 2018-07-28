#!/usr/bin/env ruby

require './lib/sub'

puts sub(2, 1) # => 1

puts sub(2, 1) + sub(4, 3) # => 2

puts sub(2, 1) - sub(4, 3) # => 0

puts sub(2, 1) * sub(2, 1) # => 1

puts sub(2, 1) / sub(2, 1) # => 1

10.times { puts sub(2, 1) }
# =>
# 1
# 1
# 1
# 1
# 1
# 1
# 1
# 1
# 1
# 1
