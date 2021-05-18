n, m = gets.split.map(&:to_i)
a_b = Array.new(m) { gets.split.map(&:to_i) }
k = gets.to_i
c_d = Array.new(k) { gets.split.map(&:to_i) }

bit = 0
max = 0
# (0...(1<<k)).each do |bit|
while bit < (1<<k)
  values = []
  # (0...k).each do |i|
  i = 0
  while i < k
    if (bit >> i) & 1 == 1
      values << c_d[i][0]
    else
      values << c_d[i][1]
    end
    i += 1
  end
  cnt = 0
  j = 0
  # (0...m).each do |i|
  while j < m
    cnt += 1 if (a_b[j] - values).empty?
    j += 1
  end
  max = [max, cnt].max
  bit += 1
end

puts max