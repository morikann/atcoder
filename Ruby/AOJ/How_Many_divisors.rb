count = 0
a, b, c = gets.chomp.split(' ').map(&:to_i)
(a..b).each do |i|
  if c % i == 0
    count += 1
  end
end
puts count