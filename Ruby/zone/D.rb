s = gets.chomp.chars

t = []
bool = false
s.each do |i|
  if i == 'R'
    bool = !bool
  else
    t.push(i) unless bool
    t.unshift(i) if bool
  end
end

if bool
  t = t.reverse
end

ans = []
t.each do |i|
  if ans.length != 0 && ans[-1] == i
    ans.pop
  else
    ans.push(i)
  end
end

puts ans.join()


# やっていることは同じだが、TLEになる(t = t + i はめちゃくちゃ遅い)
# += するたびにインスタンスを作成しているため

# s = gets.chomp.chars
 
# t = ''
# bool = false
# s.each do |i|
#   if i == 'R'
#     bool = !bool
#   else
#     t = t + i unless bool
#     t = i + t if bool
#   end
# end
 
# if bool
#   t = t.reverse
# end
 
# ans = ''
# t.chars.each do |i|
#   if ans.length != 0 && ans[-1] == i
#     ans.slice!(-1)
#   else
#     ans += i
#   end
# end
 
# puts ans