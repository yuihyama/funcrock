def fizzbuzz(x)
  return if x <= 0 || x.instance_of?(Float)
  return 'Fizz Buzz' if x % 15 == 0
  return 'Fizz' if x % 3 == 0
  return 'Buzz' if x % 5 == 0
  x
end
