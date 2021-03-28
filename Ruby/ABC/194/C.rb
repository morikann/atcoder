# n = gets.chomp.to_i
# a = gets.split.map(&:to_i)

# sum = 0
# (0...n).each do |i|
#   ((i + 1)...n).each do |j|
#     sum += (a[i] - a[j]) ** 2
#   end
# end

# puts sum

n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

new_array = array.map do
  _1 ** 2
end

x = n * new_array.sum

y = array.sum ** 2

puts x - y

# x = n * a.sum do
#   _1 ** 2
#   p _1 ** 2
# end
# p x


# y = a.sum ** 2

# puts x - y