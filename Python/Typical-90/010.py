n = int(input())
c = [0] * (n + 1)
p = [0] * (n + 1)
for i in range(1, n + 1):
  c[i], p[i] = map(int, input().split())

q = int(input())
r = [0] * (q + 1)
l = [0] * (q + 1)
for i in range(1, q + 1):
  l[i], r[i] = map(int, input().split())

sum1 = [0] * (n + 1)
sum2 = [0] * (n + 1)
for i in range(1, n + 1):
  sum1[i] = sum1[i - 1]
  sum2[i] = sum2[i - 1]
  if c[i] == 1:
    sum1[i] += p[i]
  if c[i] == 2:
    sum2[i] += p[i]

for i in range(1, q + 1):
  ans1 = sum1[r[i]] - sum1[l[i] - 1]
  ans2 = sum2[r[i]] - sum2[l[i] - 1]
  print(ans1, end=" ")
  print(ans2)

