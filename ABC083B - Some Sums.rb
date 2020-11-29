N, A, B = gets.chomp.split(' ').map(&:to_i)
total = 0

def findSumOfDigits(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  return sum
end

1.upto(N) do |i|
  sum = findSumOfDigits(i)
  if sum >= A && sum <= B
    total += i
  end
end

puts total