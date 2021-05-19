a = gets.split.map(&:to_i)

if a.count(5) == 2 && a.count(7) == 1
  puts 'YES'
else
  puts 'NO'
end
