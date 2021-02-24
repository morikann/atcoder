x = gets.chomp.to_i
if x % 100 == 0
  puts 100
else
  puts 100 - ( x % 100 )
end