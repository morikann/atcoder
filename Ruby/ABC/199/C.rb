n = gets.to_i
s = gets.chomp.chars
q = gets.to_i

flag = false
q.times do
  t, a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  if t === 1
    unless flag
      s[a], s[b] = s[b], s[a]
    else
      a = a < n ? a + n : a - n
      b = b < n ? b + n : b - n
      s[a], s[b] = s[b], s[a]
    end
  else
    flag = !flag
  end
end

if flag
  puts s[n, n].join + s[0, n].join
else
  puts s.join
end

# # TLE
# n = gets.to_i
# s = gets.chomp.to_s
# q = gets.to_i

# array = []
# (0...q).each do |i|
#   array << gets.split.map(&:to_i)
# end

# array.each do |t_a_b|
#   if t_a_b[0] == 1
#     ai = s[t_a_b[1]- 1]
#     bi = s[t_a_b[2]- 1]
#     s[t_a_b[1]- 1] = bi
#     s[t_a_b[2]- 1] = ai
#   elsif t_a_b[0] == 2
#     s_before = s[..n-1]
#     s_after = s[-n..]
#     s[..n-1] = s_after
#     s[-n..] = s_before
#   end
# end

# puts s