a=gets.chomp
b=gets.chomp
temp=a.chomp
loop do
  if temp=~/#{b}/
    puts "Yes"
    break
  else
    temp =  temp.slice(1,temp.length)+temp[0]
    if temp==a
      puts "No"
      break
   end
  end
end
