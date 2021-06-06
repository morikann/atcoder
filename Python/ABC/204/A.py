x, y = map(int, input().split())
ans = 0

if x == y:
  ans = x
elif x == 1 and y == 2:
  ans = 0
elif x == 1 and y == 0:
  ans = 2
elif x == 2 and y == 1:
  ans = 0
elif x == 2 and y == 0:
  ans = 1
elif x == 0 and y == 1:
  ans = 2
elif x == 0 and y == 2:
  ans = 1

print(ans)
