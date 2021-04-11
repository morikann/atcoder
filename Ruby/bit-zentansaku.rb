n = gets.chomp.to_i

# {0, 1, ..., n-1} の部分集合の全探索
(0...(1 << n)).each do |bit|

  # bitで表せれる集合の処理を書く

  # bitの表す集合を求める
  array = Array.new
  (0...n).each do |i|
    # bitにi番目のフラグが立っているかどうか
    if ((bit >> i) & 1) == 1
    # if (bit & (1 << i)) != 0
      array.push(i)
    end
  end

  # bitの表す集合の出力
  print "#{bit}: {"
  (0...array.size).each do |i|
    print "#{array[i]} "
  end
  puts '}'
end