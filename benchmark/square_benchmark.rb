#!/usr/bin/env ruby

require 'benchmark'
require './lib/square'

Benchmark.bmbm do |x|
  x.report('square(2)') { square(2) }
  x.report('square(100)') { square(100) }
end
