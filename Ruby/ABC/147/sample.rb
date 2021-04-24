# p 7 >> 0  #=> 7
# p 7 >> 1  #=> 3
# p 7 >> 2  #=> 1

# p (7 >> 0) & 1  #=> 1
# p (7 >> 1) & 1  #=> 1
# p (7 >> 2) & 1  #=> 1

[0, 1].repeated_permutation(3) do |bits|
  p bits
end

print "\n"

[0, 1].repeated_permutation(3) do |bits|
  bits.each_with_index do |v, i|
    p v
    p 'v-i'
    p i
    print "\n"
  end
end

print "\n"

(0...(1 << 3)).each do |bit|
  p bit
end