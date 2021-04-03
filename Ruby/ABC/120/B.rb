a, b, k = gets.chomp.split.map(&:to_i)

cnt = 0
ans = 0

(1..a).reverse_each do |i|
  if a % i == 0 && b % i == 0
    cnt += 1
    if cnt == k
      ans = i
    end
  end
end

puts ans