h, w = gets.split.map(&:to_i)

# 入力
array = Array.new(h){ gets.split.map(&:to_i) }

# 前計算
# Row = Array.new(h){0}
Row = Array.new(h, 0)
# Column = Array.new(w){0}
Column = Array.new(w, 0)
i = 0
# (0...h).each do |i|
while i < h
  j = 0
  # (0...w).each do |j|
  while j < w
    Row[i] += array[i][j]
    Column[j] += array[i][j]
    j += 1
  end
  i += 1
end

i = 0
# 答えの計算
Answer = Array.new(h){[]}
# Answer = Array.new(h, [])
# (0...h).each do |i|
while i < h
  j = 0
  # (0...w).each do |j|
  while j < w
    Answer[i][j] = Row[i] + Column[j] - array[i][j]
    j += 1
  end
  i += 1
end

i = 0
# 出力
# (0...h).each do |i|
while i < h
  j = 0
  # (0...w).each do |j|
  while j < w
    print "#{Answer[i][j]} "
    j += 1
  end
  print "\n"
  i += 1
end



# # TLE
# h, w = gets.split.map(&:to_i)

# array = []
# (0...h).each do
#   array << gets.split.map(&:to_i)
# end

# new_array = Array.new(h){[]}
# di = [-1, 0, 1, 0]
# dj = [0, -1, 0, 1]

# (0...h).each do |i|
#   (0...w).each do |j|
#     val = array[i][j]
#     (0...4).each do |v|
#       ni = i
#       nj = j
#       while true
#         ni += di[v]
#         nj += dj[v]
#         break if ni < 0 || nj < 0 || ni >= h || nj >= w
#         val += array[ni][nj]
#       end
#     end
#     new_array[i][j] = val
#   end
# end

# (0...h).each do |i|
#   (0...w).each do |j|
#     print "#{new_array[i][j]} "
#   end
#   print "\n"
# end