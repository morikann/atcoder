s = gets.chomp.chars

o = []
q = []
x = []

s.each_with_index do |char, i|
  o << i if char == 'o'
  q << i if char == '?'
  x << i if char == 'x'
end

if o.length > 4
  puts 0
elsif o.length == 4
  cnt = 0
  o.repeated_permutation(4).to_a.each do |array|
    if (o - array == [])
      cnt += 1
    end
  end
  puts cnt
elsif x.length == 10
  puts 0
elsif q.length == 10
  puts q.repeated_permutation(4).to_a.length
else
  new_a = o + q
  cnt = 0
  new_a.repeated_permutation(4).to_a.each do |array|
    if (o - array == [])
      cnt += 1
    end
  end
  puts cnt
end

