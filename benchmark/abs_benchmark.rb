#!/usr/bin/env ruby

require 'benchmark'
require './lib/abs'

Benchmark.bmbm do |x|
  x.report('abs(-1)') { abs(-1) }
  x.report('300000.times { abs(-1) }') { 300000.times { abs(-1) } }
end
