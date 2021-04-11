r, x, y = gets.chomp.split.map(&:to_i)

if x >= y
  if r > x
    puts 2
  else
    if x % r == 0
      puts x / r
    else
      puts x / r + 1
    end
  end
else
  if r > y
    puts 2
  else
    if y % r == 0
      puts y / r
    else
      puts y / r + 1
    end
  end
end