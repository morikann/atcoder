r, x, y = gets.chomp.split.map(&:to_i)

d2 = x*x + y*y
ans = 1

while true
  break if r*r*ans*ans >= d2
  ans += 1
end

if ans == 1
  ans = 2 if r*r != d2
end

puts ans