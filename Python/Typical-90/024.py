# n, k = map(int, input().split())
# A = list(map(int, input().split()))
# B = list(map(int, input().split()))

# cnt = 0
# for i in range(n):
#   cnt += abs(B[i] - A[i])

# if k % 2 == 0 and cnt % 2 == 0 and cnt <= k or k % 2 != 0 and cnt % 2 != 0 and cnt <= k:
#   print("Yes")
# else:
#   print("No")


# 参考解答
n, k = map(int, input().split())
A = list(map(int, input().split()))
B = list(map(int, input().split()))

diff = 0
for i in range(n):
  diff += abs(A[i] - B[i])

if diff > k:
  print("No")
  exit()

if diff % 2 != k % 2:
  print("No")
  exit()

print("Yes")