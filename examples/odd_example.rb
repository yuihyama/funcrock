#!/usr/bin/env ruby

require './lib/odd'

puts odd(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# =>
# 1
# 3
# 5
# 7
# 9

print odd(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), "\n" # => [1, 3, 5, 7, 9]

my_ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts odd(*my_ary)
# =>
# 1
# 3
# 5
# 7
# 9

print odd(*my_ary), "\n" # => [1, 3, 5, 7, 9]

puts odd(*(1..10).to_a)
# =>
# 1
# 3
# 5
# 7
# 9

print odd(*(1..10).to_a), "\n" # => [1, 3, 5, 7, 9]

(1..10).each { |n| puts odd(n) }
# =>
# 1
# 3
# 5
# 7
# 9
