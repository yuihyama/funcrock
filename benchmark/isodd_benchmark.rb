#!/usr/bin/env ruby

require 'benchmark'
require './lib/isodd'

Benchmark.bmbm do |x|
  x.report('isodd(1)') { isodd(1) }

  x.report('30000.times { { isodd(-2) } }') { 30000.times { isodd(-2) } }
  x.report('30000.times { { isodd(1) } }') { 30000.times { isodd(1) } }
  x.report('30000.times { { isodd(3) } }') { 30000.times { isodd(3) } }
  x.report('30000.times { { isodd(1001) } }') { 30000.times { isodd(1001) } }
end
