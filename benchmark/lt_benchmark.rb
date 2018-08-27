#!/usr/bin/env ruby

require 'benchmark'
require './lib/lt'

Benchmark.bmbm do |x|
  x.report('lt(1, 2)') { lt(1, 2) }
end
