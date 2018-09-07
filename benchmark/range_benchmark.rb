#!/usr/bin/env ruby

require 'benchmark'
require './lib/range'

Benchmark.bmbm do |x|
  x.report('range(0, 10, 1)') { range(0, 10, 1) }
  x.report('300000.times { range(0, 10, 1) }') {
    300000.times { range(0, 10, 1) }
  }
  x.report('300000.times { range(0, 10, 2) }') {
    300000.times { range(0, 10, 2) }
  }
  x.report('300000.times { range(-5, -5, 1) }') {
    300000.times { range(-5, -5, 1) }
  }
  x.report('300000.times { range(-6, -6, 3) }') {
    300000.times { range(-6, -6, 3) }
  }
  x.report('300000.times { range(1, 10, 0.1) }') {
    300000.times { range(1, 10, 0.1) }
  }
  x.report('300000.times { range(-5, 5, 0.1) }') {
    300000.times { range(-5, 5, 0.1) }
  }
end
