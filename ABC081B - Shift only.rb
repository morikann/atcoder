n = gets.chomp.to_i
i = 0
array =[]
ans = 0
 
while i < n do
  array << gets.chomp.to_i
  i += 1
end
 
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