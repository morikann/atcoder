a, b = gets.chomp.split.map(&:to_i)

max = 0

(a...b).each do |i|
  if i.gcd(b) > max
    max = i.gcd(b)
  end
end

puts max