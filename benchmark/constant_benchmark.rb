#!/usr/bin/env ruby

require 'benchmark'
require './lib/constant'

Benchmark.bmbm do |x|
  x.report('constant(1)') { constant(1) }
end
