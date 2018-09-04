#!/usr/bin/env ruby

require 'benchmark'
require './lib/iseven'

Benchmark.bmbm do |x|
  x.report('iseven(2)') { iseven(2) }

  x.report('30000.times { { iseven(-1) } }') { 30000.times { iseven(-1) } }
  x.report('30000.times { { iseven(2) } }') { 30000.times { iseven(2) } }
  x.report('30000.times { { iseven(3) } }') { 30000.times { iseven(3) } }
  x.report('30000.times { { iseven(1000) } }') { 30000.times { iseven(1000) } }
end
