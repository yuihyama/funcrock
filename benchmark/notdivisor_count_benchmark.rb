#!/usr/bin/env ruby

require 'benchmark'
require './lib/notdivisor_count'

Benchmark.bmbm do |x|
  x.report('notdivisor_count(12)') { notdivisor_count(12) }
  x.report('300000.times { notdivisor_count(12) }') {
    300000.times { notdivisor_count(12) }
  }
end
