# 解法1

# n = gets.chomp.to_i
# array = gets.chomp.split.map(&:to_i).sort.reverse

# bob = 0
# alice = 0

# until array.empty?
#   alice += array.shift
#   break if array.empty?
#   bob += array.shift
# end

# puts alice - bob


# 解法2

n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i).sort.reverse

alice = 0
bob = 0

(0...array.length).each do |i|
  if i % 2 == 0
    alice += array[i]
  else
    bob += array[i]
  end
end

puts alice - bob
