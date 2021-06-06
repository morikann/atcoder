n, p, q = map(int, input().split())
A = list(map(int, input().split()))

cnt = 0
for i in range(n):
  for j in range(i + 1, n):
    for k in range(j + 1, n):
      for l in range(k + 1, n):
        for m in range(l + 1, n):
          # 掛け算する度にpで割る
          if A[i] * A[j] % p * A[k] % p * A[l] % p * A[m] % p == q:
            cnt += 1

print(cnt)