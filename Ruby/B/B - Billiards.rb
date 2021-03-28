x1, y1, x2, y2 = gets.chomp.split(' ').map(&:to_f)
ans = (y2 * x1 + y1 * x2) / (y1 + y2)
puts ans