#!/usr/bin/env ruby

require 'benchmark'
require './lib/nextprime'

Benchmark.bmbm do |x|
  x.report('nextprime(2)') { nextprime(2) }
  x.report('nextprime(10006721)') { nextprime(10006721) }

  x.report('300000.times { nextprime(2) }') { 300000.times { nextprime(2) } }
  x.report('300.times { nextprime(10006721) }') {
    300.times { nextprime(10006721) }
  }
end
