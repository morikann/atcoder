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
a = gets.split.map(&:to_i)

x = n * a.sum do
  _1 ** 2
end

y = a.sum ** 2

puts x - y