# n = gets.chomp.to_i

# mochis = n.times.map do
#   gets.chomp.to_i
# end

# puts mochis.uniq.length

n = gets.chomp.to_i
array = []

n.times do
  array << gets.chomp.to_i
end

puts array.uniq.length