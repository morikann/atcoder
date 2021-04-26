h, w = gets.split.map(&:to_i)

if [h, w].min == 1
  puts 1
else
  n = h * w
  # 切り上げが答えになる
  ans = (n + 1) / 2
  puts ans
end

# h, w = gets.split.map(&:to_i)

# if h == 1 || w == 1
#   puts 1
# elsif h.odd? && w.even?
#   puts (h/2+1)*(w/2) + (h/2)*(w/2)
# elsif h.even? && w.even?
#   puts h/2 * w
# elsif h.odd? && w.odd?
#   puts (h/2+1)*(w/2+1) + (h/2)*(w/2)
# elsif h.even? && w.odd?
#   puts h/2 * w
# end