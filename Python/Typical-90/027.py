# dictの場合は存在しないkeyを指定すると「Key Error」になるが、defaultdict(int)を使うと存在しないkeyのデフォルトを0として扱う。
from collections import defaultdict
d = defaultdict(int)
n = int(input())

ans = []
for i in range(1, n + 1):
  s = input()
  if d[s] == 0:
    ans.append(i)
  d[s] += 1

for i in ans:
  print(i)