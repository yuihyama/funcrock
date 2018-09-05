#!/usr/bin/env ruby

require 'benchmark'
require './lib/randprime'

Benchmark.bmbm do |x|
  x.report('randprime(10)') { randprime(10) }
  x.report('300.times { randprime(10) }') { 300.times { randprime(10) } }
  x.report('3000.times { randprime(10) }') { 3000.times { randprime(10) } }
  x.report('30000.times { randprime(10) }') { 30000.times { randprime(10) } }
end
