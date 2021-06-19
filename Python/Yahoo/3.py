n, k = map(int, input().split())
s = list(str(input()))

for i in range(1, n-1):
  if k == 0:
    print(s.count('.'))
    exit()
  elif k > 0 and s[i-1] == 'S' and s[i] == 'S' and s[i+1] == 'S':
    s[i-1] = '.'
    s[i] = '.'
    s[i+1] = '.'
    k -= 1

for i in range(n-1):
  if k == 0:
    print(s.count('.'))
    exit()
  elif k > 0 and s[i] == 'S' and s[i+1] == 'S':
    s[i] = '.'
    s[i+1] = '.'
    k -= 1

for i in range(n):
  if k == 0:
    print(s.count('.'))
    exit()
  elif k > 0 and s[i] == 'S':
    s[i] = '.'
    k -= 1

print(s.count('.'))