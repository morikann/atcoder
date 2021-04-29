a = gets.to_i
b = gets.to_i
n = gets.to_i

l = a.lcm(b)
(1..n).each do |i|
  if l * i >= n
    puts l * i
    break
  end
end