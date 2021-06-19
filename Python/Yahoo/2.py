n = int(input())
a = list(map(int, input().split()))
q = int(input())

ans = []
for i in range(q):
  queries = list(map(int, input().split()))
  if queries[0] == 1:
    a[queries[1]-1] = queries[2]
  else:
    cnt = 0
    for j in range(queries[1]-1, queries[2]):
      if a[j] >= queries[3] and a[j] <= queries[4]:
        cnt += 1
    ans.append(cnt)

for i in ans:
  print(i)
