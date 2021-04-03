n = gets.chomp.to_i

t = [0]
x = [0]
y = [0]

(0...n).each do |i|
  t[i+1], x[i+1], y[i+1] = gets.chomp.split.map(&:to_i)
end

can = true

(0...n).each do |i|
  dt = t[i+1] - t[i]
  dist = (x[i+1] - x[i]).abs + (y[i+1] - y[i]).abs
  can = false if dt < dist
  can = false if dist % 2 != dt % 2
end

puts can ? 'Yes' : 'No'
# puts can == true ? 'Yes' : 'No'