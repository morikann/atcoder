# n, m = gets.chomp.split.map(&:to_i)

# s_array = []
# (0...m).each do
#   s_array << gets.chomp.split.map(&:to_i)
# end

# p_array = gets.chomp.split.map(&:to_i)

# ans = 0
# (0...(1 << n)).each do |bit|
#   ok = true
#   (0...m).each do |i|
#     cnt = 0
#     s_array[i][1..].each do |v|
#       # cnt += 1 if (bit & (1 << v-1)) != 0
#       cnt += 1 if ((bit >> v-1) & 1) == 1
#     end
#     ok = false if cnt % 2 != p_array[i]
#   end
#   ans += 1 if ok
# end

# puts ans

# puts 101 & 100
# puts 101 & 10
# puts 101 & 1

n, m = gets.split.map(&:to_i)

s_array = []
(0...m).each do
  s_array << gets.split.map(&:to_i)
end
p_array = gets.split.map(&:to_i)

ans = 0
(0...(1 << n)).each do |bit|
  ok = true
  (0...m).each do |i|
    cnt = 0
    s_array[i][1..].each do |j|
      cnt += 1 if ((bit >> j-1) & 1) == 1
    end
    ok = false if cnt % 2 != p_array[i]
  end
  ans += 1 if ok
end

puts ans