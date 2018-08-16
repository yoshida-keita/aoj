def insertionSort(a,n,g)
  g.upto(n-1){|i|
    v=a[i]
    j=i-g
    cnt=0
    while j>=0 && a[j]>v do
      a[j+g]=a[j]
      j = j-g
      @cnt+=1
    end
    a[j+g]=v
  }
end

def shellsort(a,n)
  @cnt=0
  g=[]
  val=1
  flag=false
  while val<n do
    g<<val
    val=g.last*3+1
    flag=true
  end
  g<<1 if !flag
  g.reverse!
  m=g.length
  0.upto(m-1){|i|
    insertionSort(a,n,g[i])
  }
  puts m
  puts g.join(" ")
  puts @cnt
end
n=gets.to_i;
a=[]
n.times{
  a<<gets.to_i
}
shellsort(a,n)
puts a
