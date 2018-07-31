n = gets.to_i
ans = String.new
n.times do |i|
  ans = ans + " " + "#{(i+1).to_s}" if (i+1)%3==0 || (i+1).to_s =~ /3/
end

puts ans
