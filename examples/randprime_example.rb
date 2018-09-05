#!/usr/bin/env ruby

require './lib/randprime'

# primerange(10) # => [2, 3, 5, 7]
puts randprime(10) # => 2
puts randprime(10) # => 3
puts randprime(10) # => 5
puts randprime(10) # => 7
# Output: Random!!

5.times { puts randprime(10) }
# =>
# 7
# 2
# 3
# 3
# 5
# Output: Random!!
