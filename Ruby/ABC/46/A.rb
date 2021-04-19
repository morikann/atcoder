a, b, c = gets.chomp.split.map(&:to_i)

if a == b && a == c
  puts 1
elsif a == b
  puts 2
elsif a == c
  puts 2
elsif b == c
  puts 2
else
  puts 3
end