# コンテストの際に書いた誤回答
# N = gets.chomp.to_i
# count = 0
# (2..N).each do |i|
#   (2..N).each do |j|
#     if i ** j > N
#       break
#     else
#       count += 1
#     end
#   end
# end
# puts N - count


# 回答
require 'set'

N = gets.chomp.to_i

s = Set.new

(2..(Math.sqrt(N))).each do |i|
  x = i * i
  while x <= N
    s.add(x)
    x *= i
  end
end
puts N - s.size