n = gets.to_i

array = []
(0...n).each do
  array << gets.split.map(&:to_i)
end

avg = 0
permutate_array = array.permutation.to_a
permutate_array.each do |pattern|
  sqrt = 0
  (0...(n-1)).each do |i|
    x_diff = (pattern[i][0] - pattern[i+1][0])**2
    y_diff = (pattern[i][1] - pattern[i+1][1])**2
    sqrt += Math.sqrt(x_diff + y_diff)
  end
  avg += sqrt
end

count = 1
(1..n).each do |i|
  count *= i
end

puts avg / count


# array.permutation.to_a == array.permutation(3).to_a

# p array.permutation 
#=> #<Enumerator: [[0, 0], [1, 0], [0, 1]]:permutation>
