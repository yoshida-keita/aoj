
a,b,c=gets.split.map(&:to_f)
sin=Math.sin((c/180)*Math::PI)
cos=Math.cos((c/180)*Math::PI)
puts sprintf("%.8f",(a*b*sin/2.0))
puts sprintf("%.8f",a+b+((a**2)+((b**2)-2*a*b*cos))**(1/2.0))
puts sprintf("%.8f",sin*b)
