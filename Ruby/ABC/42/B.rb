n, l = gets.split.map(&:to_i)
a = Array.new(n) {gets.chomp}

a = a.sort.join()
puts a