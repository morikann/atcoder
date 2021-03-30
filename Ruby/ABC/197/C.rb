n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
ans = 1 << 30

(0...(1 << (n - 1))).each do |s|
  now = 0
  o = 0
  (0...n).each do |i|
    o |= array[i]
    if ((s >> i) & 1) == 1
      now ^= o
      o = 0
    end
  end
  now ^= o
  ans = [ans, now].min
end

puts ans

# 2 | 1 #=> 3
# 00000010 | 00000001 #=> 00000011