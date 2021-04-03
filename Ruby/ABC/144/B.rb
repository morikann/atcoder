n = gets.chomp.to_i

flag = false

(1..9).each do |i|
  (1..9).each do |j|
    flag = true if i * j == n
  end
end

puts flag ? 'Yes' : 'No'