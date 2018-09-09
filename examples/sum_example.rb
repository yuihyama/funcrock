#!/usr/bin/env ruby

require './lib/sum'

puts sum(*[1, 2, 3]) # => 6

puts sum(*[-1, 2, 3]) # => 4

puts sum(*[1, -2, 3.0]) # => 2.0

puts sum(*['a', 'b', 'c']) # => abc

puts sum(*(1..10).to_a) # => 55

puts sum(*('a'..'c').to_a) # => abc
