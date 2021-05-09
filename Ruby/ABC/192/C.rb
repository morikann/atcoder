n, k = gets.chomp.split
k = k.to_i

(0...k).each do |i|
  n = n.to_s.chars
  g1 = n.sort.join.to_i
  g2 = n.sort.reverse.join.to_i
  n = g2 - g1
end

puts n