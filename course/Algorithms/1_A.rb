#挿入ソート
def insertionSort(a,n)
  (1..n-1).each{|i|
    v=a[i]
    j=i-1
    while j>=0 && a[j]>v
      a[j+1]=a[j]
      j-=1
    end
    a[j+1]=v
    puts a.join(' ')
  }
end

n=gets.to_i;a=gets.split.map(&:to_i)
puts a.join(' ')
insertionSort(a,n)
