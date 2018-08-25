#!/usr/bin/env ruby

require 'benchmark'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('add(1, 2)') { add(1, 2) }
end
