n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i).sort.reverse

bob = 0
alice = 0

until array.empty?
  alice += array.shift
  break if array.empty?
  bob += array.shift
end

puts alice - bob
