n = gets.chomp.to_s

if n == n.reverse
  puts 'Yes'
elsif n[-1] == '0'
  cnt = 0
  i = -1
  while true
    if n[i] == '0'
      cnt += 1
      i += -1
    else
      break
    end
  end
  (0...cnt).each do |i|
    n = '0' + n
    if n == n.reverse
      puts 'Yes'
      break
    end
  end
  puts 'No' unless n == n.reverse
else
  puts 'No'
end