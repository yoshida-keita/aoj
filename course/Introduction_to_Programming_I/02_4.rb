W,H,x,y,r =  gets.split.map(&:to_i)
if (x+r)<=W && (x-r) >= 0 && (y+r)<=H && (y-r) >= 0
  puts "Yes"
else
  puts "No"
end

