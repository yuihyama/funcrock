#!/usr/bin/env ruby

# standard deviation:
# std(n_ary, degree_of_freedom = 0)

require 'benchmark'
require './lib/std'

n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]

Benchmark.bmbm do |x|
  x.report('std(n_ary)') { std(n_ary) }
  x.report('std(n_ary, 1)') { std(n_ary, 1) }
  x.report('std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])') {
    std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
  }
  x.report('std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1)') {
    std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1)
  }
  x.report('300000.times { std(n_ary) }') { 300000.times { std(n_ary) } }
  x.report('300000.times { std(n_ary, 1) }') { 300000.times { std(n_ary, 1) } }
  x.report('300000.times { std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10]) }') {
    300000.times { std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10]) }
  }
  x.report('300000.times { std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1) }') {
    300000.times { std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1) }
  }
end
