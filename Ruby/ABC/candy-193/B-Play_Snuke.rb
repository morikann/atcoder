N = gets.chomp.to_i
a = []
p = []
x = []
i = 1
price = []
while i <= N
  a[i], p[i], x[i] = gets.chomp.split(' ').map(&:to_i)
  i += 1
end

i = 1
while i <= N
  if x[i] - a[i] > 0
    price << p[i]
  end
  i += 1
end

if price.length > 0
  min = 1000000000
  (0..price.length - 1).each do |i|
    if min > price[i]
      min = price[i]
    end
  end
  puts min
else
  puts -1
end

