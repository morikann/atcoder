import sys
# 再帰関数の上限が1000のため、上限を変更
# 上限を超える回数の再帰を実行しようとエラーが出るため（RecursionError）
sys.setrecursionlimit(10000)

N, M = map(int, input().split())
G = [[] for i in range(N)]
for i in range(M):
  A, B = map(int, input().split())
  G[A-1].append(B-1)

def dfs(i):
  if temp[i]: return
  temp[i] = True
  for j in G[i]: dfs(j)

ans = 0

for i in range(N):
  temp = [False] * N
  dfs(i)
  ans += sum(temp)

print(ans)

# n, m = map(int, input().split())

# a_b = [list(map(int, input().split())) for i in range(m)]
# sort_ab = sorted(a_b, key=lambda ab: ab[1])

# cnt = 0
# for i in range(m):
#   main_ab = sort_ab[i]
#   for j in range(m):
#     if main_ab[1] == sort_ab[j][0] and sort_ab[i][0] != sort_ab[j][1]:
#       cnt += 1
#       main_ab = sort_ab[j]

# ans = cnt + n + m

# print(ans)
