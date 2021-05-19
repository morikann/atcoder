h, w = map(int, input().split())

# 入力
a = [list(map(int, input().split())) for i in range(h)]

Row = [0] * h
Column = [0] * w

for i in range(h):
  for j in range(w):
    Row[i] += a[i][j]
    Column[j] += a[i][j]

Answer = [[0] * w for i in range(h)]
for i in range(h):
  for j in range(w):
    Answer[i][j] = Row[i] + Column[j] - a[i][j]

for i in range(h):
  for j in range(w):
    print(Answer[i][j], end=" ")
  print("")