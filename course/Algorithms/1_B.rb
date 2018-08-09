x,y=gets.split.map(&:to_i)
while x%y!=0 do
  val=x;
  x=y;
  y=val % x;
end
puts y
