n, k = map(int, input().split())

a_b = [list(map(int, input().split())) for i in range(n)]
sort_ab = sorted(a_b, key=lambda ab: ab[0])

for i in range(n):
  if sort_ab[i][0] > k:
    break
  k += sort_ab[i][1]

print(k)
