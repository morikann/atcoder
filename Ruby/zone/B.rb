n, d, h = gets.split.map(&:to_i)

a = []
(0...n).each do
  a << gets.split.map(&:to_i)
end

ans = 0
(0...n).each do |i|
  di = a[i][0]
  hi = a[i][1]
  tower = ((h - hi) * d) / (d - di).to_f
  height = h - tower
  ans = [ans, height].max
end

puts ans

# 切片を求めるだけでもいける