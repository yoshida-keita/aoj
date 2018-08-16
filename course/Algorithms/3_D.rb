l=gets.chomp.split("")
s1=[]
size=0
deep=0
res=[]
down=0
up=0
us=0
ds=0
h=0
maxh=0
under=0
flag=false
l.each{|i|
  if i=="\\"
    s1<<i
    down+=1
    h-=1
  elsif i=="/"
    s1<<i
    up+=1
    h+=1
  elsif i=="_"
    s1<<i
    under+=1
  end
  maxh=h if maxh<h
  size=0
  if maxh==up-down && up!=0 && down!=0 && s1.include?("\\") && s1.include?("/")
    while 1 do
      i=s1.pop
      if i=="\\"
        deep=deep-1
        size+=0.5+deep
        us+=1
      elsif i=="/"
        size+=0.5+deep
        deep+=1
        ds+=1
      elsif i=="_"
        size+=deep
      end
      break if us==ds && us!=0 && ds!=0
    end
    res<<size
    size=0
    deep=0
    us=0
    ds=0
  end
}
size=0
deep=0
us=0
ds=0
res2=[]
while i = s1.pop do
  if i=="/"
    size+=0.5+deep
    deep+=1
    ds+=1
    while i=s1.pop do
      if i=="\\"
        deep=deep-1
        size+=0.5+deep
        us+=1
      elsif i=="/"
        size+=0.5+deep
        deep+=1
        ds+=1
      elsif i=="_"
        size+=deep
      end
      if us==ds && us!=0 && ds!=0
        flag=true
        break
      end
    end
    res2<<size if flag
    size=0
    deep=0
    us=0
    ds=0
    flag=false
  end
end
ans1=(res.sum+res2.sum).to_i
ans2=res.size+res2.size
#ans3=res.map(&:to_i).join(" ")+" "+ res2.map(&:to_i).reverse.join(" ")
#puts ans1
#puts "#{ans2} #{ans3}"
res2=res2.reverse
res.push(res2)
res.flatten!
res=res.map(&:to_i)

puts ans1
print ans2
if res.size > 0
    puts " #{res.join(" ")}"
else
    print "\n"
end
