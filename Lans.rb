(1..9).each do |i|
  (1..9).each do |j|
    if (i * j) < 10 && j != 1
      print "  " + (i * j).to_s
    else
      print " " + (i * j).to_s
    end
  end
  print "\n"
end