#!/usr/bin/env ruby

def mulseq(start, stop, mul_num)
  res = []
  (start..stop).each { |n| res << n * mul_num }
  #res = (start..stop).map { |n| n * mul_num }
  res
end

#p mulseq()
# puts mulseq(1, 9, 1)
# p mulseq(1, 9, 1)
# print mulseq(1, 9, 1), "\n"
# p mulseq(-1.0, 9, 3)
