#!/usr/bin/env ruby

require 'benchmark'
require './lib/spsort'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('spsort(3, 2, 1)') { spsort(3, 2, 1) }
  x.report("sort('c', 'b', 'a')") { spsort('c', 'b', 'a') }
  x.report('spsort(add(1, 10), add(1, 9), add(1, 8))') {
    spsort(add(1, 10), add(1, 9), add(1, 8))
  }
end
