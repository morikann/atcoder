n = gets.chomp.to_i

cnt = 0

(1..n).each do |i|
  if i.to_s.length % 2 != 0
    cnt += 1
  end
end

puts cnt