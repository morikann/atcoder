s = gets.chomp.chars

s = s.reverse
ans = []
s.each do |i|
  if i == '6'
    i = 9
  elsif i == '9'
    i = 6
  end
  ans.push(i)
end

puts ans.join