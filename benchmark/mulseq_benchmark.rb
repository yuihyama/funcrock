#!/usr/bin/env ruby

require 'benchmark'
require './lib/mulseq'

Benchmark.bmbm do |x|
  x.report('mulseq(1, 9, 1)') { mulseq(1, 9, 1) }
  x.report('mulseq(1, 9, 2)') { mulseq(1, 9, 2) }
  x.report('mulseq(1, 9, 100)') { mulseq(1, 9, 100) }
  x.report('mulseq(1, 9, 1000)') { mulseq(1, 9, 1000) }
  x.report('mulseq(1, 9, -10000)') { mulseq(1, 9, -10000) }
end
