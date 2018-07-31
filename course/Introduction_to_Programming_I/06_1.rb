n=gets.to_i
a=gets.split.map(&:to_i)
puts a.reverse.map(&:to_s).join(" ")
