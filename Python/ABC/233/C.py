N, X = map(int, input().split())

nodes = []
for _ in range(N):
  tmp, *L = map(int, input().split())
  nodes.append(L)

ans = 0
def dfs(pos, seki):
  global ans
  if pos == N:
    if seki == X:
      ans += 1
    return # pos == Nの時点でreturnしてstackしていた前のdfsを行う


  for i in nodes[pos]:
    dfs(pos+1, seki*i)

dfs(0, 1)

print(ans)
