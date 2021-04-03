n = gets.chomp.to_i

ans = 0

(1..n).each do |i|
  if i % 2 != 0
    cnt = 0
    (1..i).each do |j|
      if i % j == 0
        cnt += 1
      end
    end
    ans += 1 if cnt == 8
  end
end

puts ans