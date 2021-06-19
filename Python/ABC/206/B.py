N = int(input())

cnt = 0
ans = 0
while True:
  cnt += 1
  ans += cnt
  if ans >= N:
    print(cnt)
    exit()