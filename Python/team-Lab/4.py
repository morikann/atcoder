max_track_volume = 5000
cnt = 0
ans = 1

for i in reversed(range(1, 701)):
  cnt += i
  if cnt > max_track_volume:
    cnt = 0
    cnt += i
    ans += 1

print(ans)