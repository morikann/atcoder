x = gets.chomp.to_i
h = x / 3600
m = (x % 3600) / 60
s = ((x % 3600) % 60) 
puts "#{h}:#{m}:#{s}"