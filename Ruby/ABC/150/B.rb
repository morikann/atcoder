# 解法1
# n = gets.chomp.to_i
# s = gets.chomp.chars

# cnt = 0

# (0...n).each do |i|
#   if s[i] == 'A' && s[i+1] == 'B' && s[i+2] == 'C'
#     cnt += 1
#   end
# end

# puts cnt



# 解法2
# n = gets.chomp.to_i
# s = gets.chomp.chars

# cnt = 0

# (0...(n-2)).each do |i|
#   if s[i] == 'A' && s[i+1] == 'B' && s[i+2] == 'C'
#     cnt += 1
#   end
# end

# puts cnt



# 解法3
n = gets.chomp.to_i
s = gets.chomp.chars

cnt = 0

(0...(n-2)).each do |i|
  if s[i] + s[i+1] + s[i+2] == 'ABC'
    cnt += 1
  end
end

puts cnt