N = int(input())
A = map(int, input().split())

compare_array = []
for i in range(1, N+1):
  compare_array.append(i)

sort_array = sorted(A)

if sort_array == compare_array:
  print("Yes")
else:
  print("No")