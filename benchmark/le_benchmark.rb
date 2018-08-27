#!/usr/bin/env ruby

require 'benchmark'
require './lib/le'

Benchmark.bmbm do |x|
  x.report('le(1, 2)') { le(1, 2) }
end
