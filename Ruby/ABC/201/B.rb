n = gets.to_i
a = []

(0...n).each do |i|
  a << gets.split
  a[i][1] = a[i][1].to_i
end

a = a.sort { |a, b| a[1] <=> b[1]}

puts a[-2][0]