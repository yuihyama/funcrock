#!/usr/bin/env ruby

require './lib/nextprime'

puts nextprime(-1) # => 2
# -x, ..., -1, 0, 1 # => 2

puts nextprime(2) # => 3

puts nextprime(3) # => 5

# puts nextprime(2.2) # => TypeError

puts nextprime(10006721) # => 10006741

(1..10).each { |n| puts nextprime(n) }
# =>
# 2
# 3
# 5
# 5
# 7
# 7
# 11
# 11
# 11
# 11

my_ary = [12, 123, 1234, 12345]
my_ary.each { |n| puts nextprime(n) }
# =>
# 13
# 127
# 1237
# 12347
