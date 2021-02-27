a, b = gets.chomp.split(' ').map(&:to_i)
diff = a - b
ratio = diff.to_f / a
puts ratio * 100
