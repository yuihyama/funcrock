#!/usr/bin/env ruby

require 'benchmark'
require './lib/divisors'

Benchmark.bmbm do |x|
  x.report('divisors(12)') { divisors(12) }
  x.report('divisors(24)') { divisors(24) }
  x.report('divisors(37)') { divisors(37) }
  x.report('divisors(1000)') { divisors(1000) }
  x.report('divisors(10000)') { divisors(10000) }
  x.report('divisors(100000)') { divisors(100000) }
end
