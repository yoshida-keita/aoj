a = gets.downcase.chomp
count=0
flag=0
loop do
  b=gets.chomp.split.map
  b.each do |i|
    flag=1 if i=="END_OF_TEXT"
    count = count+1 if i.downcase==a
  end
  break if flag==1
end
puts count

