N = int(input())
Elections = []

for i in range(N):
  Elections.append(input())

memo = {}

for i in range(N):
  if memo.get(Elections[i]) == None:
    memo[Elections[i]] = 1
  else:
    memo[Elections[i]] += 1

max = 0
ans = ''
for k, v in memo.items():

  if v > max:
    max = v
    ans = k

print(ans)