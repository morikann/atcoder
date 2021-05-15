a = gets.split.map(&:to_i)

a = a.sort
a1 = a[1] - a[0]
a2 = a[2] - a[1]

if a1 == a2
  puts 'Yes'
else
  puts 'No'
end
