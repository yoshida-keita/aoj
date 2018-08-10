def bubblesort(n,as)
  count=0
  n.times do |i|
    (n-i-1).times do |j|
      if as[j+1]<as[j]
        as[j],as[j+1]=as[j+1],as[j]
        count+=1
      end
    end
  end
  puts as.join(" ")
  puts count
end
n=gets.to_i;as=gets.split.map(&:to_i);
bubblesort(n,as)
