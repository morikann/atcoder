n = gets.to_i

array = []
2.times do
  array << gets.split.map(&:to_i)
end

ans = 0
(0...n).each do |i|
  sum = array[0][0..i].sum + array[1][i..n].sum
  ans = [ans, sum].max 
end

puts ans