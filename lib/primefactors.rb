require 'Prime'

def primefactors(x)
  x = x.to_i if x.instance_of?(Float)
  x = -x.to_i if x < 0
  res = Prime.prime_division(x)
  res.map(&:first)
end
