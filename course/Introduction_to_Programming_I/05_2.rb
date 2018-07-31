loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  h.times do |i|
    puts "#{'#'*w}" if i==0
    puts "#{'#'*w}" if i==h-1
    puts "##{'.'*(w-2)}#" if i!=0 && i!= h-1
  end
    puts ""
end
