from collections import defaultdict
N = int(input())
A = list(map(int, input().split()))
d = defaultdict(int)

for i in range(N):
  d[A[i]] += 1

ans = N * (N - 1) // 2
for key, value in d.items():
  if value > 1:
    ans -= (value * (value - 1) // 2)

print(ans)



# from collections import defaultdict

# N = int(input())
# A = list(map(int, input().split()))
# sort_A = sorted(A)
# size_A = len(sort_A)

# d = defaultdict(int)

# for i in range(N):
#   d[sort_A[i]] += 1

# ans = 0
# for i in range(N-1):
#   same_num = d[sort_A[i]]
#   cnt = size_A - same_num
#   if i != 0 and sort_A[i] != sort_A[i-1]:
#     cnt -= len(sort_A[i:])
#   ans += cnt

# print(ans)