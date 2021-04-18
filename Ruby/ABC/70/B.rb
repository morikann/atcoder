a, b, c, d = gets.chomp.split.map(&:to_i)

max = [a, c].max
min = [b, d].min

if max > min
  puts 0
else
  puts min - max
end