# n = int(input())
from sys import stdin
n = int(stdin.readline())
a = list(map(int, input().split()))
b = list(map(int, input().split()))
c = list(map(int, input().split()))

am = [0] * 46
bm = [0] * 46
cm = [0] * 46

for i in range(n):
  am[a[i] % 46] += 1
  bm[b[i] % 46] += 1
  cm[c[i] % 46] += 1

ans = 0
for i in range(46):
  for j in range(46):
    for k in range(46):
      if (i + j + k) % 46 == 0:
        ans += am[i] * bm[j] * cm[k]

print(ans)

# print((92+81+225+12) % 46)
# print(((92%46) + (81%46) + (225%46) + (12 % 46)) % 46)