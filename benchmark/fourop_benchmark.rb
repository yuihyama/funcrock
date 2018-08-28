#!/usr/bin/env ruby

require 'benchmark'
require './lib/fourop'

Benchmark.bmbm do |x|
  x.report('fourop(10, 2)') { fourop(10, 2) }
end
