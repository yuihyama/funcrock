#!/usr/bin/env ruby

require 'benchmark'
require './lib/fizzbuzz'

Benchmark.bmbm do |x|
  x.report('fizzbuzz(100)') { fizzbuzz(100) }
  x.report('300000.times { fizzbuzz(100) }') {
    300000.times { fizzbuzz(100) }
  }
end
