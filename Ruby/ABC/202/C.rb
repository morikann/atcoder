n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
d = Array.new(101010, 0)
cnt = Array.new(101010, 0)

(0...n).each do |i|
  d[i] = b[c[i] - 1]
end

(0...n).each do |i|
  cnt[d[i]] += 1
end

ans = 0
(0...n).each do |i|
  ans += cnt[a[i]]
end

puts ans

# TLE
# n = gets.to_i
# a = gets.split.map(&:to_i)
# b = gets.split.map(&:to_i)
# c = gets.split.map(&:to_i)

# match_index = []
# b.each_with_index do |num, idx|
#   if a.include?(num)
#     match_index.push(idx + 1)
#   end
# end

# ans = 0
# c.each do |num|
#   if match_index.include?(num)
#     cnt = a.count(b[num - 1])
#     ans += 1 * cnt
#   end
# end

# puts ans