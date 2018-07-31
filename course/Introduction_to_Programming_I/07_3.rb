n,m = gets.split.map(&:to_i)
a=Array.new(n).map{Array.new(m)}
n.times do |i|
  a[i]=gets.split
  puts a[i].join(" ") + " " + a[i].map(&:to_i).sum.to_s
end
b=Array.new(m,0)
n.times do |i|
  m.times do |k|
    b[k] = b[k]+a[i][k].to_i
  end
end
puts b.map(&:to_s).join(" ") + " " + b.map(&:to_i).sum.to_s
