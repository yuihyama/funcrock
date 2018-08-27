#!/usr/bin/env ruby

require 'benchmark'
require './lib/factorial'

Benchmark.bmbm do |x|
  x.report('factorial(10)') { factorial(10) }
  x.report('factorial(100)') { factorial(100) }
  x.report('factorial(1000)') { factorial(1000) }
  x.report('factorial(10000)') { factorial(10000) }
end
