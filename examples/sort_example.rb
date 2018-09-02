#!/usr/bin/env ruby

require './lib/sort'

puts sort([3, 2, 1])
# =>
# 1
# 2
# 3

p sort([3, 2, 1]) # => [1, 2, 3]

my_ary = [3, 2, 1]
puts sort(my_ary)
# =>
# 1
# 2
# 3

p sort(my_ary) # => [1, 2, 3]

puts sort(['c', 'b', 'a'])
# =>
# a
# b
# c


require './lib/add'
puts sort([add(1, 9), add(1, 8), add(1, 7)])
# =>
# 8
# 9
# 10

n_ary = [1, 2, 3]
n_ary.each do |n|
  puts sort([add(n, 8), add(n, 7), add(n, 6)])
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
  print sort([add(n, 8), add(n, 7), add(n, 6)]), "\n"
end
# =>
# [7, 8, 9]
# [8, 9, 10]
# [9, 10, 11]
