#!/usr/bin/env ruby

require 'benchmark'
require './lib/mean'

Benchmark.bmbm do |x|
  x.report('mean([1, 2, 3])') { mean([1, 2, 3]) }
end
