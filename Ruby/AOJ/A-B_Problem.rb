a, b = gets.chomp.split(' ').map(&:to_i)
d = a / b
r = a % b
f = a.to_f / b
puts "#{d} #{r} #{sprintf('%0.5f', f)}"