#!/usr/bin/env ruby

require 'benchmark'
require './lib/antenum'

Benchmark.bmbm do |x|
  x.report('antenum(1)') { antenum(1) }
  x.report('antenum(-1)') { antenum(-1) }
  x.report('antenum(0.9)') { antenum(0.9) }
end
