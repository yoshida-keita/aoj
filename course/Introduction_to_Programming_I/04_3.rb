loop do
  a,b,c = gets.split
  a=a.to_i
  c=c.to_i
  break if b == "?"
  if b == "+"
    puts a+c
  elsif b == "-"
    puts a-c
  elsif b == "/"
    puts a/c
  elsif b == "*"
    puts a*c
  end
end
