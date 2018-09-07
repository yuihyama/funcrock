#!/usr/bin/env ruby

# variance:
# var(n_ary, degree_of_freedom = 0)

require 'benchmark'
require './lib/var'

n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]

Benchmark.bmbm do |x|
  x.report('var(n_ary)') { var(n_ary) }
  x.report('300000.times { var(n_ary) }') { 300000.times { var(n_ary) } }
end
