def factorial(x)
  return 0 if x < 0
  return 1 if x == 0
  (1..x).inject(1, :*)
end
