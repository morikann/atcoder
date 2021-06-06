n, m = map(int, input().split())

a_b = [list(map(int, input().split())) for i in range(m)]
sort_ab = sorted(a_b, key=lambda ab: ab[1])

cnt = 0
for i in range(m):
  main_ab = sort_ab[i]
  for j in range(m):
    if main_ab[1] == sort_ab[j][0] and sort_ab[i][0] != sort_ab[j][1]:
      cnt += 1
      main_ab = sort_ab[j]

ans = cnt + n + m

print(ans)
