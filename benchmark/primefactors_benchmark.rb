#!/usr/bin/env ruby

require 'benchmark'
require './lib/primefactors'

Benchmark.bmbm do |x|
  x.report('primefactors(20)') { primefactors(20) }
  x.report('300000.times { primefactors(20) }') {
    300000.times { primefactors(20) }
  }
end
