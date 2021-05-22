a, b, k = gets.split.map(&:to_i)

a_size = ("a" * a)
b_size = ("b" * b)

array = a_size + b_size
p array.split('').combination(4).to_a