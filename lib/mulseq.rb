def mulseq(start, stop, mul_num)
  res = []
  (start..stop).each { |n| res << n * mul_num }
  res
end
