n, m = gets.chomp.split.map(&:to_i)
array_A = gets.chomp.split.map(&:to_i)
array_B = gets.chomp.split.map(&:to_i)

ans = (array_A - array_B) + (array_B - array_A)

if ans.uniq.length > 0
  ans.uniq.sort.each do |i|
    print "#{i} "
  end
  print "\n"
end
