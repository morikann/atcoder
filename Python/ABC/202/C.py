n = int(input())
a = list(map(int, input().split()))
b = list(map(int, input().split()))
c = list(map(int, input().split()))
cnt = [0] * (n + 1)

for i in range(n):
  cnt[a[i]] += 1

ans = 0
for j in range(n):
  ans += cnt[b[c[j] - 1]]

print(ans)


## TLE
# import sys
# # n = int(input())
# n = sys.stdin.readline()
# a = list(map(int, input().split()))
# b = list(map(int, input().split()))
# c = list(map(int, input().split()))

# match_index = []
# for idx, num in enumerate(b):
#   if num in a:
#     match_index.append(idx + 1)

# ans = 0
# for num in c:
#   if num in match_index:
#     cnt = a.count(b[num - 1])
#     ans += 1 * cnt

# print(ans)