def range(start = 0, stop = 0, r_step = 1)
  res = []
  start.step(stop, r_step) { |n| res << n.round(10) }
  res
end
