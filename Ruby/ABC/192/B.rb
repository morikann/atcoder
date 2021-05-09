s = gets.chomp

flag = false
(0...s.length).each do |i|
  if (i+1).odd?
    unless s[i] == s[i].downcase
      flag = true
      break
    end
  elsif (i+1).even?
    unless s[i] == s[i].upcase
      flag = true
      break
    end
  end
end

if flag
  puts "No"
else
  puts "Yes"
end

