x, y, z = gets.chomp.split.map(&:to_i)

t_1_gram = y / x.to_f
price = y*z / x
s_1_gram = price / z.to_f

if s_1_gram >= t_1_gram
  puts price.floor - 1
else
  puts price.floor
end
