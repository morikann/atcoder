a, b, c = map(int, input().split())

def gcd(x, y):
  if x > y:
    while x % y != 0:
      mod = x % y
      x = y
      y = mod
    return y
  elif y > x:
    while y % x != 0:
      mod = y % x
      y = x
      x = mod
    return x

r = gcd(a, gcd(b, c))
cnt = (a / r - 1) + (b / r - 1) + (c / r - 1)
print(cnt)