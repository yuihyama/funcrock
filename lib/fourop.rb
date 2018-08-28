#!/usr/bin/env ruby

def fourop(x, y)
  x = x.to_f
  y = y.to_f
  if y == 0.0
    [x + y, x - y, x * y, x.to_i / y.to_i]
  else
    [x + y, x - y, x * y, x / y]
  end
end
