#!/usr/bin/env ruby

# Funmathruby examples:

require './lib/add'
require './lib/sub'
require './lib/mul'
require './lib/div'
require './lib/factorial'

# +(1, 2)
# 1 + 2
puts add(1, 2) # => 3

# +(+(+(1, 2), 3), 4)
# (((1 + 2) + 3) + 4)
puts add(add(add(1, 2), 3), 4) # => 10
#
# or
puts add(4, add(3, add(1, 2))) # => 10

# /(*(-(+(10, 20), 10), 20), 10)
# (((10 + 20) - 10) * 20) / 10
puts div(mul(sub(add(10, 20), 10), 20), 10) # => 40

# 10!
puts factorial(10) # => 3628800

(1..10).each { |n| puts factorial(n) }
# =>
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880
# 3628800

# More examples?
# See examples directory :)
