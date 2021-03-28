array = []
while true
  x = gets.chomp.to_i
  break if x == 0
  array << x
end

(0..array.length - 1).each do |i|
  puts "Case #{i+1}: #{array[i]}"
end