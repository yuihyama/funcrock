#!/usr/bin/env ruby

require 'benchmark'
require './lib/time'

Benchmark.bmbm do |x|
  x.report('time ') { time }
  x.report('time()') { time() }
  x.report('300.times { time }') { 300.times { time } }
  x.report('300.times { time() }') { 300.times { time() } }
end
