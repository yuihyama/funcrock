#!/usr/bin/env ruby

require 'benchmark'
require './lib/sum'

Benchmark.bmbm do |x|
  x.report('sum(*[1, 2, 3])') { sum(*[1, 2, 3]) }
  x.report("sum(*['a', 'b', 'c'])") { sum(*['a', 'b', 'c']) }

  x.report('300000.times { sum(*[1, 2, 3]) }') {
    300000.times { sum(*[1, 2, 3]) }
  }
  x.report("300000.times { sum(*['a', 'b', 'c']) }" ) {
    300000.times { sum(*['a', 'b', 'c']) }
  }
end
