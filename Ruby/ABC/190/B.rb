n, s, d = gets.split.map(&:to_i)
a = Array.new(n) { gets.split.map(&:to_i) }

flag = false
(0...n).each do |i|
  if a[i][0] < s && a[i][1] > d
    flag = true
    break
  end
end

puts flag ? 'Yes' : 'No'