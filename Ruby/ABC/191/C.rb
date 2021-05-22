h, w = gets.split.map(&:to_i)
s = Array.new(h){gets.chomp.chars}

ans = 0
(0...(h-1)).each do |i|
  (0...(w-1)).each do |j|
    cnt = 0
    (0...2).each do |di|
      (0...2).each do |dj|
        cnt += 1 if s[i+di][j+dj] == '#'
      end
    end
    ans += 1 if cnt == 1 || cnt == 3
  end
end

puts ans