a_price, b_price, ab_price, x, y = gets.chomp.split.map(&:to_i)

# パターンとしては、「AとBをバラで買う」「ABで片方を埋め、もう片方をバラで買う」「ABのみで両方を埋め、片方を余らせる」の3パターン存在する。

if a_price + b_price < ab_price * 2
  puts a_price * x + b_price * y
elsif x > y
  ab = ab_price * y * 2
  extra = (x - y) * [a_price, ab_price * 2].min
  puts ab + extra
else
  ab = ab_price * x * 2
  extra = (y - x) * [b_price, ab_price * 2].min
  puts ab + extra
end