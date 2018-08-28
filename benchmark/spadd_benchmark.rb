#!/usr/bin/env ruby

require 'benchmark'
require './lib/spadd'

Benchmark.bmbm do |x|
  x.report('spadd(1, 10)') { spadd(1, 10) }
  x.report('spadd(1, 100)') { spadd(1, 100) }
  x.report('spadd(1, 100)') { spadd(1, 1000) }
  x.report('spadd(1, 100)') { spadd(1, 10000) }
  x.report('spadd(1, 100)') { spadd(1, 100000) }
  x.report('spadd(1, 100)') { spadd(1, 1000000) }
end
