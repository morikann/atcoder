N, A, B = gets.split.map(&:to_i)
s_N = gets.chomp.chars
s_A = gets.chomp.chars
s_B = gets.chomp.chars

cnt_a = 0
cnt_b = 0
s_N.each do |i|
  if i == s_A[cnt_a]
    cnt_a += 1
  end

  if i == s_B[cnt_b]
    cnt_b += 1
  end
end

x = s_A.length - cnt_a
b = s_B.length - cnt_b
print "#{x} #{b}\n"