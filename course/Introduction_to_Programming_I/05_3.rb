loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  mozi1 = String.new
  mozi2 = String.new
  w.times do |i|
    mozi1 = mozi1 + '#' if i%2==0
    mozi1 = mozi1 + '.' if i%2!=0
    mozi2 = mozi2 + '.' if i%2==0
    mozi2 = mozi2 + '#' if i%2!=0
  end
  h.times do |i|
    puts "#{mozi1}" if i%2==0
    puts "#{mozi2}" if i%2!=0
  end
    puts ""
end
