n = gets.chomp.to_i

power = 1
(1..n).each do |i|
  power *= i
  power = power % (10**9 + 7)
end

puts power