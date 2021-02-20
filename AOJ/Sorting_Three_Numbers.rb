array = []
array = gets.chomp.split(' ').map(&:to_i)
ans = array.sort.join(' ')
puts ans