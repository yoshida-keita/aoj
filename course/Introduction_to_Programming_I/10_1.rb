a,b,c,d=gets.split.map(&:to_f)
puts sprintf("%.8f",(((c-a)**2)+((d-b)**2))**(1/2.0))
