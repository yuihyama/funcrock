#!/usr/bin/env ruby

require 'benchmark'
require './lib/mul'

Benchmark.bmbm do |x|
  x.report('mul(2, 3)') { mul(2, 3) }
end
