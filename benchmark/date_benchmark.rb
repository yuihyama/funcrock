#!/usr/bin/env ruby

require 'benchmark'
require './lib/date'

Benchmark.bmbm do |x|
  x.report('date') { date }
  x.report('date()') { date() }
  x.report('300.times { date }') { 300.times { date } }
  x.report('300.times { date() }') { 300.times { date() } }
end
