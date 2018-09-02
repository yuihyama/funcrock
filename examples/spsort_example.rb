#!/usr/bin/env ruby

require './lib/spsort'

puts spsort(3, 2, 1)
# =>
# 1
# 2
# 3

p spsort(3, 2, 1) # => [1, 2, 3]

puts spsort('c', 'b', 'a')
# =>
# a
# b
# c


require './lib/add'
puts spsort(add(1, 9), add(1, 8), add(1, 7))
# =>
# 8
# 9
# 10

n_ary = [1, 2, 3]
n_ary.each do |n|
  puts spsort(add(n, 8), add(n, 7), add(n, 6))
end
# =>
# 7
# 8
# 9
# 8
# 9
# 10
# 9
# 10
# 11

n_ary.each do |n|
  print spsort(add(n, 8), add(n, 7), add(n, 6)), "\n"
end
# =>
# [7, 8, 9]
# [8, 9, 10]
# [9, 10, 11]
