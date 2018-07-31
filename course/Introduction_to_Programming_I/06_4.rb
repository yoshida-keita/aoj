n,m = gets.split.map(&:to_i)
a=Array.new(n).map{Array.new()}
n.times do |i|
  a[i] = gets.split.map(&:to_i)
end
b=[]
m.times do
  b<<gets.to_i
end

n.times do |i|
  sum = 0
  m.times do |j|
    sum = sum+a[i][j]*b[j]
  end
  puts sum
end
