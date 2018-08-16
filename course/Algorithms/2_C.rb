def bubblesort(c,n)
  0.upto(n-1){|i|
    (n-1).downto(i+1){|j|
      c[j],c[j-1]=c[j-1],c[j] if c[j].value<c[j-1].value
    }
  }
end
def selectionSort(c,n)
  0.upto(n-1){|i|
    minj=i
    i.upto(n-1){|j|
      if c[j].value < c[minj].value
        minj = j
      end
    }
    temp=c[i]
    c[i]=c[minj]
    c[minj]=temp
  }
end

class Card
  attr_accessor :value,:mark
  def initialize(v,m)

    @value=v
    @mark=m
  end
  def getcard
  end
end

n=gets.to_i
cs=gets.split
cards=[]
cs.each{|c|
  cards<<Card.new(c[1],c[0])
}
bub=cards.dup
bubblesort(bub,n)

sel=cards.dup
selectionSort(sel,n)

bub.each_with_index{|bu,i|
  print "#{bu.mark}#{bu.value} " if i!=bub.size-1
  print "#{bu.mark}#{bu.value}" if i==bub.size-1
}
print "\n"

puts "Stable"

sel.each_with_index{|se,i|
  print "#{se.mark}#{se.value} " if i!=bub.size-1
  print "#{se.mark}#{se.value}" if i==bub.size-1
}
print "\n"
flag=false
sel.each_with_index{|se,i|
  if sel[i].mark != bub[i].mark
    flag=true
    break
  end
}
puts flag ? "Not stable" : "Stable"
