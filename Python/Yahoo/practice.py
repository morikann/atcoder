n = int(input())
A = list(map(int, input().split()))

print(min(A), max(A))
sorted_A = sorted(A)
str_A = map(str, sorted_A)
print(''.join(str_A))