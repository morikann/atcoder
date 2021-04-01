# コンテストTLE回答

# n = gets.chomp.to_i
# a = gets.split.map(&:to_i)

# sum = 0
# (0...n).each do |i|
#   ((i + 1)...n).each do |j|
#     sum += (a[i] - a[j]) ** 2
#   end
# end

# puts sum



# 回答1

# n = gets.chomp.to_i
# array = gets.chomp.split.map(&:to_i)

# new_array = array.map do
#   _1 ** 2
# end

# x = n * new_array.sum

# y = array.sum ** 2

# puts x - y



# 回答2

# n = gets.chomp.to_i
# a = gets.chomp.split.map(&:to_i)

# MaxA = 200
# d = []
# ans = 0
# (0...n).each do |i|
#   (-MaxA..MaxA).each do |aj|
#     c = d[MaxA + aj]
#     x = a[i] - aj
#     ans += x * x * c
#   end
#   d[MaxA + a[i]] += 1
# end
# puts ans
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
MaxA = 200
d = []
p d[MaxA*2+1]
# (0...n).each do |i|
#   d[MaxA + a[i]] += 1
# end
# p d