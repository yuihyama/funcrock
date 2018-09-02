def divisors(x)
  if x < 0
    x = -x
  end

  res = []
  (1..x).each do |n|
    if x % n == 0
      res << n
    end
  end
  res
end
