#!/usr/bin/env ruby

require 'benchmark'
require './lib/sub'

Benchmark.bmbm do |x|
  x.report('sub(2, 1)') { sub(2, 1) }
end
