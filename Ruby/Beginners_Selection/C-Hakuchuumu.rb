# s = gets.to_s.chomp

# %w(eraser erase dreamer dream).each{ |w| s = s.gsub(w,"") }
# puts s == "" ? "YES" : "NO"

s = gets.to_s.chomp

['eraser', 'erase', 'dreamer', 'dream'].each do |w|
  s = s.gsub(w, '')
end

puts s == '' ? 'YES' : 'NO'


