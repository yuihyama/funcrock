def divisors(x)
  x = -x if x < 0

  res = []
  (1..x).each do |n|
    res << n if x % n == 0
  end
  res
end
