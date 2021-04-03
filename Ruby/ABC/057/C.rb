n = gets.chomp.to_i

min = 11

def f(a, b)
  rtn = 0
  if a.to_s.size >= b.to_s.size
    rtn = a
  else
    rtn = b
  end
  return rtn.to_s.size
end

(1..n).each do |i|
  (1..n).each do |j|
    if i * j == n
      rtn = f(i, j)
      min = [min, rtn].min
    end
  end
end

puts min