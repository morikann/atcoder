n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

a_max = 0
b_min = 10000
(0...n).each do |i|
  a_max = [a_max, a[i]].max
  b_min = [b_min, b[i]].min
end

ans = b_min - a_max + 1
if ans < 0
  puts 0
else
  puts ans
end