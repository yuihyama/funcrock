#!/usr/bin/env ruby

require 'benchmark'
require './lib/divisor_count'

Benchmark.bmbm do |x|
  x.report('divisor_count(12)') { divisor_count(12) }

  x.report('30.times { divisor_count(24) ') {
    30.times { divisor_count(24) }
  }

  x.report('300.times { divisor_count(24) ') {
    300.times { divisor_count(24) }
  }

  x.report('3000.times { divisor_count(24) ') {
    3000.times { divisor_count(24) }
  }

  x.report('30000.times { divisor_count(24) ') {
    30000.times { divisor_count(24) }
  }

  x.report('300000.times { divisor_count(24) ') {
    300000.times { divisor_count(24) }
  }
end
