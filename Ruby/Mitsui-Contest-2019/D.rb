## TLE回答
# n = gets.chomp.to_i
# s = gets.chomp

# ans = 0
# ('000'..'999').each do |i|
#   cursor = 0
#   (0...n).each do |j|
#     if s[j] == i[cursor]
#       cursor += 1
#       if cursor == 3
#         break
#       end
#     end
#   end
#   if cursor == 3
#     ans += 1
#   end
# end

# puts ans

n = gets.chomp.to_i
nums = gets.chomp.chars.map(&:to_i)

ans = 0
(0..9).each do |i|
  target = [i]
  (0..9).each do |j|
    target[1] = j
    (0..9).each do |k|
      target[2] = k
      cursor = 0
      nums.each do |num|
        if num == target[cursor]
          cursor += 1
          break if cursor == 3
        end
      end
      ans += 1 if cursor == 3
    end
  end
end

puts ans