a, b = gets.chomp.split(' ').map(&:to_i)
c, d = gets.chomp.split(' ').map(&:to_i)
ans = a*d - b*c
puts ans