a,b,c=gets.split.map(&:to_i)
count = 0
d = b-a+1
d.times do |i|
  temp = a.to_i+i
  if c%temp==0
    count=count+1
  end
end
