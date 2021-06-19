num, minPrice = map(int, input().split())
sellingPrices = [0] * num
profits = [0] * num
for i in range(num):
  s, p = map(int, input().split())
  sellingPrices[i] = s
  profits[i] = p

ans = 0
for i in range(num):
  if sellingPrices[i] >= minPrice:
    ans += profits[i]

print(ans)