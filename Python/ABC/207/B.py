A, B, C, D = map(int, input().split())
cnt = 0
Red = 0
Blue = A

for i in range(A):
  cnt += 1
  Red += C
  Blue += B
  if Blue <= D * Red:
    print(cnt)
    exit()

print(-1)

  