#!/usr/bin/env ruby

def antenum(x)
  if x.instance_of?(Integer)
    x - 1
  else
    x - 0.1
  end
end
