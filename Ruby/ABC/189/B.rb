n, x = gets.split.map(&:to_i)
s = 0

(0...n).each do |i|
  v, p = gets.split.map(&:to_i)
  s += v * p
  if s > x * 100
    puts i + 1
    exit
  end
end

puts -1