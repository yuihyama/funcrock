#!/usr/bin/env ruby

require 'benchmark'
require './lib/div'

Benchmark.bmbm do |x|
  x.report('div(10, 2)') { div(10, 2) }
end
