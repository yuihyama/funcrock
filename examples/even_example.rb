#!/usr/bin/env ruby

require './lib/even'

puts even(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# =>
# 2
# 4
# 6
# 8
# 10

print even(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), "\n" # => [2, 4, 6, 8, 10]

my_ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts even(*my_ary)
# =>
# 2
# 4
# 6
# 8
# 10

print even(*my_ary), "\n" # => [2, 4, 6, 8, 10]

puts even(*(1..10).to_a)
# =>
# 2
# 4
# 6
# 8
# 10

print even(*(1..10).to_a), "\n" # => [2, 4, 6, 8, 10]

(1..10).each { |n| puts even(n) }
# =>
# 2
# 4
# 6
# 8
# 10
