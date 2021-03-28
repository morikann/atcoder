r = gets.chomp.to_i
area = r * r * Math::PI
puts "#{sprintf('%.6f', area)} #{sprintf('%.6f', 2 * r * Math::PI)}"