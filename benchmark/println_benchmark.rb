#!/usr/bin/env ruby

require 'benchmark'
require './lib/println'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('println(1)') { println(1) }
  x.report('println(1, 2)') { println(1, 2) }
  x.report('println(1 + 2 + 3)') { println(1 + 2 + 3) }
  x.report('println(add(1, 2), add(3, 4))') { println(add(1, 2), add(3, 4)) }
end
