n = gets.chomp.to_i
(0..n).each do |i|
  (0..n-i).each do |j|
    print "#{i*10000 + j*5000 + (n - i - j)*1000} "
  end
  puts "\n"
end
