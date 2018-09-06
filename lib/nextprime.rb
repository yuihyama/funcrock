require 'Prime'

def nextprime(x)
  if x > 100000000000000000
    return "It's a pretty big number. I'll fix this program in the future."
  end

  (x + 1..x + 100).each do |n|
    return n if Prime.prime?(n)
  end
end
