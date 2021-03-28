A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i
ans = 0

0.upto(A) do |a|
  0.upto(B) do |b|
    0.upto(C) do |c|
      ans += 1 if 500*a + 100*b + 50*c == X
    end
  end
end

puts ans
