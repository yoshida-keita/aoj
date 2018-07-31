a=gets.split("")
a.each do |i|
  if 'a'<=i && i<='z'
    i.upcase!
  elsif 'A'<=i && i<='Z'
    i.downcase!
  end
end
puts a.join("")
