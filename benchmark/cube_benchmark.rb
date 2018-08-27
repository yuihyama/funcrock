#!/usr/bin/env ruby

require 'benchmark'
require './lib/cube'

Benchmark.bmbm do |x|
  x.report('cube(3)') { cube(3) }
end
