a, b = gets.chomp.split(' ').map(&:to_i)
x = a*2 + 100
limit = x - b
puts limit