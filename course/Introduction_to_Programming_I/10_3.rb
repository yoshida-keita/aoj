loop do
  n=gets.to_i
  break if n==0
  s=gets.split.map(&:to_f)
  ave = s.sum/n
  sum = 0
  s.each do |i|
    sum = sum + (i-ave)**2
  end
  puts sprintf("%.8f",(sum/n)**(1/2.0))
end
