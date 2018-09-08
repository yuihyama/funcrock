#!/usr/bin/env ruby

require 'benchmark'
require './lib/notdivisors'

Benchmark.bmbm do |x|
  x.report('notdivisors(12)') { notdivisors(12) }
  x.report('300000.times { notdivisors(12) }') {
    300000.times { notdivisors(12) }
  }
end
