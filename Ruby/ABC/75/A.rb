a, b, c = gets.chomp.split.map(&:to_i)

if a == b
  puts c
elsif a == c
  puts b
elsif b == c
  puts a
end