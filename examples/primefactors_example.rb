#!/usr/bin/env ruby

require './lib/primefactors'

p primefactors(20) # => [2, 5]

puts primefactors(20)
# =>
# 2
# 5

print primefactors(20), "\n" # => [2, 5]

p primefactors(1) # => []

p primefactors(-20) # => [2, 5]

# p primefactors(0) # => ZeroDivisionError

puts primefactors(1) # => (nil)
puts

(1..45).each { |n| print primefactors(n), "\n" }
# =>
# []
# [2]
# [3]
# [2]
# [5]
# [2, 3]
# [7]
# [2]
# [3]
# [2, 5]
# [11]
# [2, 3]
# [13]
# [2, 7]
# [3, 5]
# [2]
# [17]
# [2, 3]
# [19]
# [2, 5]
# [3, 7]
# [2, 11]
# [23]
# [2, 3]
# [5]
# [2, 13]
# [3]
# [2, 7]
# [29]
# [2, 3, 5]
# [31]
# [2]
# [3, 11]
# [2, 17]
# [5, 7]
# [2, 3]
# [37]
# [2, 19]
# [3, 13]
# [2, 5]
# [41]
# [2, 3, 7]
# [43]
# [2, 11]
# [3, 5]
