#!/usr/bin/env ruby

require './lib/isodd'

puts isodd(1) # => true

puts isodd(2) # => false

# puts isodd(3.3) # => NoMethodError

my_ary = []
(-3..4).each { |n| my_ary << isodd(n) }
puts my_ary
# =>
# true
# false
# true
# false
# true
# false
# true
# false

my_ary.reverse.each { |a| puts a }
# =>
# false
# true
# false
# true
# false
# true
# false
# true
