a, b, w = gets.split.map(&:to_i)

w *= 1000
l, r = 1e9, -1e9

(1..w).each do |n|
  if a*n <= w && w <= b*n
    l = [l, n].min
    r = [r, n].max
  end
end

if l == 1e9
  puts 'UNSATISFIABLE'
else
  puts "#{l} #{r}"
end