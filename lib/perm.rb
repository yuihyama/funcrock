require './lib/factorial'

def perm(n, r)
  f_n = n.to_f
  f_r = r.to_f

  return 0 if f_n < 0 || f_r < 0
  return 0 if f_n == 0 && f_r == 1
  return factorial(f_n) if f_n == f_r

  factorial(f_n) / factorial(f_n - f_r)
end
