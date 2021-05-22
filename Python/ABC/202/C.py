import sys
# n = int(input())
n = sys.stdin.readline()
a = list(map(int, input().split()))
b = list(map(int, input().split()))
c = list(map(int, input().split()))

match_index = []
for idx, num in enumerate(b):
  if num in a:
    match_index.append(idx + 1)

ans = 0
for num in c:
  if num in match_index:
    cnt = a.count(b[num - 1])
    ans += 1 * cnt

print(ans)