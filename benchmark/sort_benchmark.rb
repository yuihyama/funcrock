#!/usr/bin/env ruby

require 'benchmark'
require './lib/sort'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('sort([3, 2, 1])') { sort([3, 2, 1]) }
  x.report('sort(["c", "b", "a"])') { sort(['c', 'b', 'a']) }
  x.report('sort([add(1, 10), add(1, 9), add(1, 8)])') {
    sort([add(1, 10), add(1, 9), add(1, 8)])
  }
end
