a, b, c = gets.split.map(&:to_i)

def gcd(x, y)
  if x >= y
    while x % y != 0
      mod = x % y
      x = y
      y = mod
    end
    return y
  elsif y > x
    while y % x != 0
      mod = y % x
      y = x
      x = mod
    end
    return x
  end
end
r = gcd(a, gcd(b, c))
cnt = (a / r - 1) + (b / r - 1) + (c / r - 1)
puts cnt