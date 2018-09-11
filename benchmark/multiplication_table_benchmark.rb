#!/usr/bin/env ruby

require 'benchmark'
require './lib/multiplication_table'

Benchmark.bmbm do |x|
  x.report('multiplication_table()') { multiplication_table() }
  x.report('multiplication_table') { multiplication_table }
end
