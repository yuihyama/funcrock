def notdivisors(x)
  res = []
  return res if x.instance_of?(Float)

  x = -x if x < 0

  (1..x).each do |n|
    res << n if x % n != 0
  end
  res
end
