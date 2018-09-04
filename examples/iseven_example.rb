#!/usr/bin/env ruby

require './lib/iseven'

puts iseven(2) # => true

puts iseven(3) # => false

# puts iseven(4.4) # => NoMethodError

my_ary = []
(-3..4).each { |n| my_ary << iseven(n) }
puts my_ary
# =>
# false
# true
# false
# true
# false
# true
# false
# true

my_ary.reverse.each { |a| puts a }
# =>
# true
# false
# true
# false
# true
# false
# true
# false
