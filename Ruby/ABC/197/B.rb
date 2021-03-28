# # 解法1
# h, w, x, y = gets.chomp.split.map(&:to_i)
# x = x - 1
# y = y - 1

# array = Array.new

# (1..h).each do
#   array << gets.chomp.chars
# end

# cnt = -3

# x.upto(h-1) do |i|
#   if i < h && array[i][y] != '#'
#     cnt += 1
#   else
#     break
#   end
# end

# x.downto(0) do |i|
#   if i >= 0 && array[i][y] != '#'
#     cnt += 1
#   else
#     break
#   end
# end

# y.upto(w-1) do |j|
#   if j < w && array[x][j] != '#'
#     cnt += 1
#   else
#     break
#   end
# end

# y.downto(0) do |j|
#   if j >= 0 && array[x][j] != '#'
#     cnt += 1
#   else
#     break
#   end
# end

# puts cnt


# 解法2
h, w, x, y = gets.chomp.split.map(&:to_i)
x -= 1
y -= 1

array = Array.new()

(1..h).each do |i|
  array << gets.chomp.chars
end

di = [-1, 0, 1, 0]
dj = [0, -1, 0, 1]

ans = 1

(0...4).each do |v|
  ni = x
  nj = y

  while true
    ni += di[v]
    nj += dj[v]
    # if ni < 0 || nj < 0 || ni >= h || nj >= w || array[ni][nj] == '#'
    #   break
    # end
    # 下の書き方の方がシンプル
    break if ni < 0 || nj < 0 || ni >= h || nj >= w
    break if array[ni][nj] == '#'
    ans += 1
  end
end

puts ans


# コンテスト当日の回答
# ACにならなかった理由は範囲オブジェクトは降順で処理することができない
# 例 ok
# (1..3).each do |i|
#   p i
# end
#=> 1 2 3

# 例 ダメ
# (3..1).each do |i|
#   p i
# end
#=> 3 2 1 とはならない！！
# なので降順で処理する場合は「downto」メソッドを用いる




# コンテスト当日の回答

# h, w, x, y = gets.chomp.split.map(&:to_i)

# array = Array.new

# (1..h).each do
#   array << gets.chomp.chars
# end

# count = 1
# ((y - 2)..0).each do |i|
#   if (y - 2) >= 0
#     if array[x - 1][i] == '.'
#       count += 1
#     else
#       break
#     end
#   end
# end

# (y...w).each do |i|
#   if array[x - 1][i] == '.'
#     count += 1
#   else
#     break
#   end
# end

# ((x - 2)..0).each do |i|
#   if (x - 2) >= 0
#     if array[i][y - 1] == '.'
#       count += 1
#     else
#       break
#     end
#   end
# end

# (x...h).each do |i|
#   if array[i][y - 1] == '.'
#     count += 1
#   else
#     break
#   end
# end

# puts count