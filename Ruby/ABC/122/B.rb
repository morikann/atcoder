# 解法1
# s = gets.chomp.chars
 
# max = 0
# cnt = 0
 
# (0...s.size).each do |i|
#   if ['A', 'C', 'G', 'T'].include?(s[i])
#     cnt += 1
#     max = [max, cnt].max
#   else
#     cnt = 0
#   end
# end
 
# puts max


# 解法2
s = gets.chomp.chars

max = 0
cnt = 0

(0...s.size).each do |i|
  if ['A', 'C', 'G', 'T'].include?(s[i])
    cnt += 1
  else
    max = [max, cnt].max
    cnt = 0
  end
end

max = [max, cnt].max
puts max



