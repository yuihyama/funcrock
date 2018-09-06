#!/usr/bin/env ruby

require 'benchmark'
require './lib/TAU'

Benchmark.bmbm do |x|
  x.report('TAU') { TAU }
  x.report('300000.times { TAU }') { 300000.times { TAU } }
end
