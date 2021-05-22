n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
(0...n).each do |l|
  x = a[l]
  (l...n).each do |r|
    x = [x, a[r]].min
    ans = [ans, x * (r - l + 1)].max
  end
end

puts ans