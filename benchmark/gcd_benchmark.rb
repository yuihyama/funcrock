#!/usr/bin/env ruby

require 'benchmark'
require './lib/gcd'

Benchmark.bmbm do |x|
  x.report('gcd(4, 24)') { gcd(4, 24) }
end
