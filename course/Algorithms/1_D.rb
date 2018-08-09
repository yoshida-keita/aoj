as=[];gets.to_i.times{as<<gets.to_i}
max=-999999999999
min=999999999999
as.each_with_index{|a,i|
  if min > a
    min = a
    as[i+1..-1].each{|a2|
      max=a2-a if a2-a >max
    }
  end
}
puts max
