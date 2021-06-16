N, Q = map(int, input().split())
A = map(int, input().split())
K = []
C = [0] * N
for i in range(N):
  C[i] = A[i]-i-1
for i in range(Q):
  ki = int(input())
  K.append(ki)

array = []
for i in range(N):
  if not i in A:
    array.append(i)

for i in K:
  print(array[i-1])

# import math
# print(math.log2(10 ** 18))