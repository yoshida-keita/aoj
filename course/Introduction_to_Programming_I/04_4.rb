n=gets.to_i
a=gets.split.map(&:to_i).sort
puts "#{a.first} #{a.last} #{a.sum}"
