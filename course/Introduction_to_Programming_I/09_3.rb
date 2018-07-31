n=gets.to_i
asum=0
bsum=0
n.times do
  a,b=gets.split
  if a>b
    asum=asum+3
  elsif a<b
    bsum=bsum+3
  else
    asum=asum+1
    bsum=bsum+1
  end
end
puts "#{asum} #{bsum}"
