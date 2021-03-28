# p 10.to_s(2)
n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

if array.size == 1
  puts array[0]
else
  