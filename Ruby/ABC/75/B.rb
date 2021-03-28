h, w = gets.chomp.split.map(&:to_i)
array = Array.new
(1..h).each do
  array << gets.chomp.split
end

(0...h).each do |i|
  p array[i]
  p array[i][i+1]
end

# p array