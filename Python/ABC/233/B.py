L, R = map(int, input().split())
S = input()

rid_str = S[L-1:R]
riverse_str = rid_str[::-1]

ans = S[:L-1] + riverse_str + S[R:]
print(ans)