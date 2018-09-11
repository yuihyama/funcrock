#!/usr/bin/env ruby

require 'benchmark'
require './lib/min'

Benchmark.bmbm do |x|
  x.report('min(1, 2, 3)') { min(1, 2, 3) }
  x.report('min(*[1, 2, 3])') { min(*[1, 2, 3]) }
  x.report('300000.times { min(1, 2, 3) }') {
    300000.times { min(1, 2, 3) }
  }
  x.report('300000.times { min(*[1, 2, 3]) }') {
    300000.times { min(*[1, 2, 3]) }
  }
end
