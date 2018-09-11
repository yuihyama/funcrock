require 'Prime'

def factorint(x)
  return [] if x.instance_of?(Float)
  Prime.prime_division(x)
end
