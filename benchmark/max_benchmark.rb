#!/usr/bin/env ruby

require 'benchmark'
require './lib/max'

Benchmark.bmbm do |x|
  x.report('max(1, 2, 3)') { max(1, 2, 3) }
  x.report('max(*[1, 2, 3])') { max(*[1, 2, 3]) }
  x.report('300000.times { max(1, 2, 3) }') {
    300000.times { max(1, 2, 3) }
  }
  x.report('300000.times { max(*[1, 2, 3]) }') {
    300000.times { max(*[1, 2, 3]) }
  }
end
