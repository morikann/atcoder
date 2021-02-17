n = gets.chomp.to_i
array = gets.chomp.split(' ').map(&:to_i)
ans = 0
 
while true
  exist_odd = false
  array.each do |i|
    exist_odd = true if i % 2 != 0 
  end
  
  break if exist_odd == true
  
  j = 0
  
  while j < n do
    array[j] /= 2
    j += 1
  end
  
  ans += 1
end

puts ans