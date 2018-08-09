require 'prime'
as=[];count=0;
gets.to_i.times{count+=1 if Prime.prime?(gets.to_i)}
puts count
