#!/usr/bin/env ruby

require 'benchmark'
require './lib/comb'

Benchmark.bmbm do |x|
  x.report('comb(10, 3)') { comb(10, 3) }
  x.report('comb(100, 3)') { comb(100, 3) }
  x.report('comb(1000, 3)') { comb(1000, 3) }
  x.report('comb(10000, 3)') { comb(10000, 3) }
end
