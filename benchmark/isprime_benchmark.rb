#!/usr/bin/env ruby

require 'benchmark'
require './lib/isprime'

Benchmark.bmbm do |x|
  x.report('isprime(3)') { isprime(3) }
  x.report('300000.times { isprime(3) }') { 300000.times { isprime(3) } }
end
