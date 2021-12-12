N, Q = map(int, input().split())
A = [int(x) for x in input().split()]
A.sort()

for i in range(Q):
  x = int(input())

  # 両端を判定するためにも範囲外で設定
  left = -1
  right = N

  while (right - left) > 1:
    mid = (right + left) // 2  # 平均で真ん中を取る
    if A[mid] >= x: right = mid
    else: left = mid

  print(N - right)

