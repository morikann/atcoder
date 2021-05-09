n = gets.to_i
array = gets.split.map(&:to_i)

cnt = Array.new(200){0}
(0...n).each do |i|
  cnt[array[i]%200] += 1
end
ans = 0
(0...200).each do |i|
  ans += cnt[i]*(cnt[i]-1)/2
end

puts ans