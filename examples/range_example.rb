#!/usr/bin/env ruby

require './lib/range'

# range(start, stop, step)
p range(0, 10, 1) # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts range(0, 10, 1)
# =>
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

print range(0, 10, 1), "\n" # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print range(0, 10, 2), "\n" # => [0, 2, 4, 6, 8, 10]
print range(0, 10, 3), "\n" # => [0, 3, 6, 9]
print range(0, 0.5, 0.1), "\n" # => [0.0, 0.1, 0.2, 0.3, 0.4, 0.5]
print range(-5, 5, 1), "\n" # => [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
print range(-1, -0.5, 0.1), "\n" # => [-1.0, -0.9, -0.8, -0.7, -0.6, -0.5]

require './lib/mean'
puts mean(range(1, 10, 3)) # => 5.5
