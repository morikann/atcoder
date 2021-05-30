n, k = map(int, input().split())

ans = 0
for i in range(1, n + 1):
  for j in range(1, k + 1):
    room = str(i) + "0" + str(j)
    room_int = int(room)
    ans += room_int

print(ans)