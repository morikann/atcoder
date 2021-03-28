h, w, x, y = gets.chomp.split.map(&:to_i)

array = Array.new

(1..h).each do
  array << gets.chomp.chars
end

count = 1
((y - 2)..0).each do |i|
  if (y - 2) >= 0
    if array[x - 1][i] == '.'
      count += 1
    else
      break
    end
  end
end

(y...w).each do |i|
  if array[x - 1][i] == '.'
    count += 1
  else
    break
  end
end

((x - 2)..0).each do |i|
  if (x - 2) >= 0
    if array[i][y - 1] == '.'
      count += 1
    else
      break
    end
  end
end

(x...h).each do |i|
  if array[i][y - 1] == '.'
    count += 1
  else
    break
  end
end

puts count