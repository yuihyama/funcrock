#!/usr/bin/env ruby

require 'benchmark'
require './lib/remainder'

Benchmark.bmbm do |x|
  x.report('remainder(9, 2)') { remainder(9, 2) }
  x.report('300000.times { remainder(9, 2) }') { 300000.times { remainder(9, 2) } }
end
