h, w = gets.chomp.split.map(&:to_i)

array = Array.new

(1..h).each do |i|
  array << gets.chomp.chars
end

di = [-1, 0, 1, 0, -1, -1, 1, 1]
dj = [0, -1, 0, 1, -1, 1, 1, -1]

(0...h).each do |i|
  (0...w).each do |j|
    ni = i
    nj = j
    cnt = 0
    if array[i][j] != '#'
      (0...8).each do |k|
        ni += di[k]
        nj += dj[k]

        if ni >= 0 && nj >= 0 && ni < h && nj < w
          if array[ni][nj] == '#'
            cnt += 1
          end
        end
        ni = i
        nj = j
      end
      array[i][j].replace(cnt.to_s)
    end
  end
end

(0...h).each do |i|
  (0...w).each do |j|
    print array[i][j]
  end
  print "\n"
end