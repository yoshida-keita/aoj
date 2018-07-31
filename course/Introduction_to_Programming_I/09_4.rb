s=gets
n=gets.to_i
n.times do
  a,b,c,d=gets.split
  b=b.to_i
  c=c.to_i
  if a == "replace"
    i=b
    j=0
    (b..c).each do
      s[i]=d[j]
      i=i+1
      j=j+1
    end
  elsif a == "reverse"
    s[b..c]= s[b..c].reverse
  elsif a == "print"
    puts s[b..c]
  end
end
