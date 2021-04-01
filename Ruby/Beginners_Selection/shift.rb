n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

cnt = 0
flag = false

while true
  array.each do |i|
    flag = true if i.odd?
  end

  break if flag == true

  j = 0
  while j < n
    array[j] /= 2
    j += 1
  end
  cnt += 1
end

puts cnt