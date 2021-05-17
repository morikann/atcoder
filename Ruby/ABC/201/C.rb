## コンテストの回答 AC
# s = gets.chomp.chars

# o = []
# q = []
# x = []

# s.each_with_index do |char, i|
#   o << i if char == 'o'
#   q << i if char == '?'
#   x << i if char == 'x'
# end

# if o.length > 4
#   puts 0
# elsif o.length == 4
#   cnt = 0
#   o.repeated_permutation(4).to_a.each do |array|
#     if (o - array == [])
#       cnt += 1
#     end
#   end
#   puts cnt
# elsif x.length == 10
#   puts 0
# elsif q.length == 10
#   puts q.repeated_permutation(4).to_a.length
# else
#   new_a = o + q
#   cnt = 0
#   new_a.repeated_permutation(4).to_a.each do |array|
#     if (o - array == [])
#       cnt += 1
#     end
#   end
#   puts cnt
# end


## AtCoderLiveの回答
s = gets.chomp.to_s

ans = 0
(0...10000).each do |num|
  x = num
  a = Array.new(10) {0}
  (0...4).each do |i|
    d = x % 10
    a[d] = 1
    x /= 10
  end
  flag = true
  (0...10).each do |i|
    flag = false if s[i] == 'o' && a[i] != 1
    flag = false if s[i] == 'x' && a[i] != 0
  end
  ans += 1 if flag
end

puts ans