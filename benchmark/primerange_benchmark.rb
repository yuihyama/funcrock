#!/usr/bin/env ruby

require 'benchmark'
require './lib/primerange'

Benchmark.bmbm do |x|
  x.report('primerange(10)') { primerange(10) }
  x.report('300.times { primerange(10) }') {
    300.times { primerange(10) }
  }
  x.report('3000.times { primerange(10) }') {
    3000.times { primerange(10) }
  }
  x.report('30000.times { primerange(10) }') {
    30000.times { primerange(10) }
  }
end
