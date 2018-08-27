#!/usr/bin/env ruby

require 'benchmark'
require './lib/pow'

Benchmark.bmbm do |x|
  x.report('pow(2, 3)') { pow(2, 3) }
end
