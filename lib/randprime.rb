require './lib/primerange'

def randprime(x)
  p_r = primerange(x)
  p_r[rand(p_r.size)]
end
