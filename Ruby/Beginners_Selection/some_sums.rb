n, a, b = gets.chomp.split.map(&:to_i)
ans = 0

def calculateSum n
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  return sum
end

(1..n).each do |i|
  sum = calculateSum(i)

  if sum >= a && sum <= b
    ans += i
  end
end

puts ans