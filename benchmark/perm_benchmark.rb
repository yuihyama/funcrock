#!/usr/bin/env ruby

require 'benchmark'
require './lib/perm'

Benchmark.bmbm do |x|
  x.report('perm(10, 3)') { perm(10, 3) }
  x.report('perm(100, 3)') { perm(100, 3) }
  x.report('perm(1000, 3)') { perm(1000, 3) }
  x.report('perm(10000, 3)') { perm(10000, 3) }
end
