n,q=gets.split.map(&:to_i)
ps=[]
n.times{ps.push(gets.split)}
cnt=0
while p=ps.shift do
  if p[1].to_i<=q
    cnt+=p[1].to_i
    puts "#{p[0]} #{cnt}"
  else
    p[1]=p[1].to_i-q
    cnt+=q
    ps.push(p)
  end
end
