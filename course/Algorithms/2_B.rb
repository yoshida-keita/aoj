def selectionSort(a,n)
  count=0
  n.times{|i|
    minj=i
    (i).upto(n-1){|j|
      minj = j if a[j] < a[minj]
    }
    a[i],a[minj]=a[minj],a[i]
    count+=1 if i!=minj
  }
  puts a.join(" "),count
end

n=gets.to_i;a=gets.split.map(&:to_i)
selectionSort(a,n)
