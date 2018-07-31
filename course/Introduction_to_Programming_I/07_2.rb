loop do
  a,b=gets.split.map(&:to_i)
  break if a==0 && b==0
  count = 0
  (1..a-2).each do |i|
    (i+1..a-1).each do |j|
      (j+1..a).each do |k|
        count = count+1 if i+j+k==b
      end
    end
  end
  puts count
end
