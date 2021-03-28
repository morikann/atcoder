array = [] 
array = gets.chomp.split(' ').map(&:to_i)
area = array[0]*array[1]
circle = 2*(array[0]+array[1])

puts "#{area} #{circle}"  