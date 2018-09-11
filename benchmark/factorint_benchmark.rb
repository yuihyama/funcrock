#!/usr/bin/env ruby

require 'benchmark'
require './lib/factorint'

Benchmark.bmbm do |x|
  x.report('factorint(10)') { factorint(10) }
  x.report('300000.times { factorint(10) }') { 300000.times { factorint(10) } }
end
