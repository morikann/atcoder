n = gets.chomp.to_i

min = 11

def f(a, b)
  max = 0
  if a.to_s.size >= b.to_s.size
    max = a
  else
    max = b
  end
  return max.to_s.size
end

(1..Math.sqrt(n)).each do |i|
  if n % i == 0
    rtn = f(i, n / i)
    min = [min, rtn].min
  end
end

puts min