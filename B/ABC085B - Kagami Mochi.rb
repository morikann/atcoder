n = gets.chomp.to_i

mochis = n.times.map do
  gets.chomp.to_i
end

puts mochis.uniq.length