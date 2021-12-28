N, K = map(int, input().split())
A = list(map(int, input().split()))

ans = [K // N for i in range(N)]
for i in range(K % N):
  
for x in ans:
  print(x)


# N = int(input())

# array = [i for i in range(N)]
# array2 = ['a' for i in range(N)]

# print(array) # [0, 1, 2]
# print(array2) # ['a', 'a', 'a']
