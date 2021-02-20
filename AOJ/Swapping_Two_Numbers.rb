while true
  x, y = gets.chomp.split(' ').map(&:to_i)
  break if x == 0 && y == 0
  if x > y
    temp = x
    x = y
    y = temp
  end
  puts "#{x} #{y}"
end
