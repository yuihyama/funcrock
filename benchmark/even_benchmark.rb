#!/usr/bin/env ruby

require 'benchmark'
require './lib/even'

my_ary = [1, 2, 3, 4]

Benchmark.bmbm do |x|
  x.report('even(1, 2, 3, 4)') { even(1, 2, 3, 4) }
  x.report('even(*my_ary)') { even(*my_ary) }
  x.report('even(*(1..4).to_a)') { even(*(1..4).to_a) }

  x.report('300000.times { even(1, 2, 3, 4) }') {
    300000.times { even(1, 2, 3, 4) }
  }
  x.report('300000.times { even(*my_ary) }') {
    300000.times { even(*my_ary) }
  }
  x.report('300000.times { even(*(1..4).to_a) }') {
    300000.times { even(*(1..4).to_a) }
  }
end
