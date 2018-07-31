h=[]
s=[]
d=[]
c=[]
13.times do |i|
  h<<i+1
  s<<i+1
  d<<i+1
  c<<i+1
end
n=gets.to_i
n.times do
  a,b=gets.split
  if a=="S"
    s.delete(b.to_i)
  elsif a=="H"
    h.delete(b.to_i)
  elsif a=="D"
    d.delete(b.to_i)
  elsif a=="C"
    c.delete(b.to_i)
  end
end

  s.each do |i|
    puts "S #{i}"
  end
  h.each do |i|
    puts "H #{i}"
  end
  c.each do |i|
    puts "C #{i}"
  end
  d.each do |i|
    puts "D #{i}"
  end
