a, b, x = gets.chomp.split.map(&:to_i)

puts (b / x) - (a / x) + (a % x == 0 ? 1 : 0)