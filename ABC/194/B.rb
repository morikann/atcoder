n = gets.chomp.to_i

array = []
n.times do
  array << gets.chomp.split.map(&:to_i)
end

# Aで一番仕事が早い人
a_index = array.transpose[0].index(array.transpose[0].min)

# Bで一番仕事が早い人
b_index = array.transpose[1].index(array.transpose[1].min)

# AとBが異なる人の場合
if a_index != b_index
  p [array[a_index][0], array[b_index][1]].max
end

# AとBが同じ人の場合
if a_index == b_index
  # Aで2番目に早い人
  a_index2 = array.transpose[0].index(array.transpose[0].sort[-2])
  # Bで2番目に早い人
  b_index2 = array.transpose[1].index(array.transpose[1].sort[-2])

  # 同じ人にお願いする場合
  a = array[a_index].sum
  # Aだけ早い人
  b = [array[a_index][0], array[b_index2][1]].max
  # bだけ早い人
  c = [array[a_index2][0], array[b_index][1]].max

  p [a, b, c].min
end