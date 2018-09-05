#!/usr/bin/env ruby

require './lib/isprime'

puts isprime(-1) # => false

puts isprime(0) # => false

puts isprime(1) # => false

puts isprime(2) # => true

puts isprime(3) # => true

# puts isprime(4.4) # => ArgumentError

my_ary = []
(-3..3).each { |n| my_ary << isprime(n) }
print my_ary, "\n" # => [false, false, false, false, false, true, true]
