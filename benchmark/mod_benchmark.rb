#!/usr/bin/env ruby

require 'benchmark'
require './lib/mod'

Benchmark.bmbm do |x|
  x.report('mod(1, 2)') { mod(1, 2) }
end
