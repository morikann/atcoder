# n = gets.to_i

# array = []
# (0...n).each do
#   array << gets.split.map(&:to_i)
# end

# # Aの能力値が高い人
# a_index = array.transpose[0].index(array.transpose[0].max)
# # Bの能力値が高い人
# b_index = array.transpose[1].index(array.transpose[1].max)
# # Cの能力値が高い人
# c_index = array.transpose[2].index(array.transpose[2].max)
# # Dの能力値が高い人
# d_index = array.transpose[3].index(array.transpose[3].max)
# # Eの能力値が高い人
# e_index = array.transpose[4].index(array.transpose[4].max)

# cnt = [a_index, b_index, c_index, d_index, e_index].uniq.count

# if cnt >= 3 || n == 3
#   puts [array[a_index][0], array[b_index][1], array[c_index][2], array[d_index][3], array[e_index][4]].min
# elsif cnt == 2