n = gets.to_i

array = Array.new(n) {[]}

(0...n).each do |i|
  a = gets.to_i 
  (0...a).each do |j|
    tmp = gets.split.map(&:to_i)
    tmp[0] -= 1
    array[i][j] = tmp
  end
end

ans = 0
(0...(1 << n)).each do |bit|
  flag = true
  (0...n).each do |i|
    next if (bit >> i) & 1 != 1
    array[i].each do |x, y|
      if ((bit >> x) & 1) != y
        flag = false
        break
      end
    end
    break unless flag
  end
  ans = [ans, bit.to_s(2).count('1')].max if flag
end

puts ans

# p array
# p array[0]
# print "\n"
# array[0].each do |x, y|
#   p x
#   p y
#   print "\n"
# end

# print "\n"
# array[0].each do |i|
#   p i
# end

# p 7.to_s(2).count('1')
