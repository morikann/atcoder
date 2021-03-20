# コンテストのTLEとなったコード

# require 'set'

# n = gets.chomp.to_i

# s = Set.new

# a = n.to_s.size
# (0..(a - 1)).each do |i|
#   if i.odd?
#     ((10 ** i)..(10 ** (i + 1) - 1)).each do |j|
#       x = j.to_s.size / 2
#       first = j.to_s.slice(0, x)
#       last = j.to_s.slice(x, x)
#       if first == last && j <= n
#         s.add(j)
#       end
#     end
#   end
# end
# puts s.size


# 回答
n = gets.chomp.to_i
(1..(10 ** 6)).each do |i|
  if (i.to_s * 2).to_i > n
    puts i - 1
    break
  end
end