#!/usr/bin/env ruby

require 'benchmark'
require './lib/pos'

Benchmark.bmbm do |x|
  x.report('pos(1)') { pos(1) }
  x.report('300000.times { pos(1) }') { 300000.times { pos(1) } }
end
