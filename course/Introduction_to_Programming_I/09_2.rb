loop do
  a=gets.chomp
  break if a =="-"
  b=gets.to_i
  b.times do
    c=gets.to_i
    temp=a.slice(0,c)
    a=a.slice(c,a.length-c)+temp
  end
  puts a

end
