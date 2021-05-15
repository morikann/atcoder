a, b, c = gets.split.map(&:to_i)

if c == 0
  if a <= b
    puts "Aoki"
  else
    puts "Takahashi"
  end
else
  if b <= a
    puts "Takahashi"
  else
    puts "Aoki"
  end
end
    