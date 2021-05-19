n, k = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)
memo = [true] * 10
ds.each do |i|
  memo[i] = false
end

while true
  s = n.to_s
  ok = true
  s.chars.each do |i|
    index = i.to_i
    unless memo[index]
      ok = false
    end
  end
  if ok
    puts s
    break
  end
  n += 1
end

# n, k = gets.split.map(&:to_i)
# Ds = gets.split.map(&:to_i)

# ans = 0
# (n..10000).each do |i|
#   flag = true
#   x = i.to_s.split('').map(&:to_i)
#   Ds.each do |j|
#     if x.include?(j)
#       flag = false
#       break
#     end
#   end
#   if flag
#     ans = x.join
#     break
#   end
# end

# puts ans