n=gets.to_i
xi=gets.split.map(&:to_f)
yi=gets.split.map(&:to_f)
d1=0.0
d2=0.0
d3=0.0
d4=[]
n.times do |i|
  d1=d1+(xi[i]-yi[i]).abs
  d2=d2+((xi[i]-yi[i]).abs)**2
  d3=d3+((xi[i]-yi[i]).abs)**3
  d4<<(xi[i]-yi[i]).abs
end
puts sprintf("%.6f",d1)
puts sprintf("%.6f",d2**(1/2.0))
puts sprintf("%.6f",d3**(1/3.0))
puts sprintf("%.6f",d4.max)
