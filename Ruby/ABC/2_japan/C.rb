a, b = gets.chomp.split.map(&:to_i)

ans = 0

(1..200000).each do |gcd|
  cnt = b / gcd - (a - 1) / gcd 
  if cnt >= 2
    ans = gcd
  end
end

puts ans