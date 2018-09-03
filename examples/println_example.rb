#!/usr/bin/env ruby

require './lib/println'

println(1) # => 1

println(1.1) # => 1.1

println(-1) # => -1

println(1 + 2) # => 3

println(1 + 2 * 3.0) # => 7


require './lib/add'
println(add(1, 2), add(3, 4)) # => 3 7
println(add(1, 2) - add(3, 4)) # => -4
