n = gets.to_i
a = gets.split.map(&:to_i)

avg = (a.sum.to_f / a.size).round
ans = 0
a.each do |i|
  ans += (i - avg)**2
end

puts ans