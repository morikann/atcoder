N = gets.chomp.to_i
count = 0
(2..N).each do |i|
  (2..N).each do |j|
    if i ** j > N
      break
    else
      count += 1
    end
  end
end
puts N - count