#!/usr/bin/env ruby

require 'benchmark'
require './lib/nextnum'

Benchmark.bmbm do |x|
  x.report('nextnum(1)') { nextnum(1) }
  x.report('nextnum(1.1)') { nextnum(1.1) }
end
