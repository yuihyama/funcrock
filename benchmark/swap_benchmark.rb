require 'benchmark'
require './lib/swap'

Benchmark.bmbm do |x|
  x.report('swap(1, 2)') { swap(1, 2) }
  x.report('30.times { swap(1, 2) }') { 30.times { swap(1, 2) } }
  x.report('300.times { swap(1, 2) }') { 300.times { swap(1, 2) } }
  x.report('3000.times { swap(1, 2) }') { 3000.times { swap(1, 2) } }
  x.report('30000.times { swap(1, 2) }') { 30000.times { swap(1, 2) } }
  x.report('300000.times { swap(1, 2) }') { 300000.times { swap(1, 2) } }
end
