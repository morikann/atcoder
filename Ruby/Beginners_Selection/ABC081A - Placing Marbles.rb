count = 0
input = gets.chomp.split('').map(&:to_i)
input.each do |figure|
  if figure == 1
    count += 1
  end
end
puts count