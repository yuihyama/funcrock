#!/usr/bin/env ruby

require 'benchmark'
require './lib/EULER_GAMMA'

Benchmark.bmbm do |x|
  x.report('EULER_GAMMA') { EULER_GAMMA }
  x.report('300000.times { EULER_GAMMA }') { 300000.times { EULER_GAMMA } }
end
