#!/usr/bin/env ruby

require 'benchmark'
require './lib/odd'

my_ary = [1, 2, 3, 4]

Benchmark.bmbm do |x|
  x.report('odd(1, 2, 3, 4)') { odd(1, 2, 3, 4) }
  x.report('odd(*my_ary)') { odd(*my_ary) }
  x.report('odd(*(1..4).to_a)') { odd(*(1..4).to_a) }

  x.report('300000.times { odd(1, 2, 3, 4) }') {
    300000.times { odd(1, 2, 3, 4) }
  }
  x.report('300000.times { odd(*my_ary) }') {
    300000.times { odd(*my_ary) }
  }
  x.report('300000.times { odd(*(1..4).to_a) }') {
    300000.times { odd(*(1..4).to_a) }
  }
end
