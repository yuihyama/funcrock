#!/usr/bin/env ruby

require 'benchmark'
require './lib/neg'

Benchmark.bmbm do |x|
  x.report('neg(1)') { neg(1) }
  x.report('300000.times { neg(1) }') { 300000.times { neg(1) } }
end
