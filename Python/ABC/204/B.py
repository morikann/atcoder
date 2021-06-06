n = int(input())
A = list(map(int, input().split()))

cnt = 0
for i in range(n):
  if A[i] > 10:
    cnt += A[i] - 10

print(cnt)