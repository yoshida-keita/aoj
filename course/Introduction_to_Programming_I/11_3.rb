class Dice
  def initialize(a,b,c,d,e,f)
    @top   = a
    @down  = b
    @right = c
    @left  = d
    @up    = e
    @back  = f
  end
  attr_accessor :top,:down,:right,:left,:up,:back
  def move(dice,m)
    top=@top
    down=@down
    right=@right
    left=@left
    up=@up
    back=@back

    if m=="S"
      @top=  up
      @down= top
      @right=right
      @left= left
      @up=   back
      @back= down
    elsif m=="W"
      @top=  right
      @down= down
      @right=back
      @left= top
      @up=   up
      @back= left
    elsif m=="N"
      @top=  down
      @down= back
      @right=right
      @left= left
      @up=   top
      @back= up
    elsif m=="E"
      @top=  left
      @down= down
      @right=top
      @left= back
      @up=   up
      @back= right
    end
  end
  def printDice
#    puts "top:#{@top}  down:#{@down}  right:#{@right}  lefr:#{@left} up:#{@up} back:#{@back}"
     puts @right
  end
end

a,b,c,d,e,f=gets.split.map(&:to_i)
dice1=Dice.new(a,b,c,d,e,f)
a,b,c,d,e,f=gets.split.map(&:to_i)
dice2=Dice.new(a,b,c,d,e,f)
flag = 0
1000.times do
  random = Random.new
  ran=random.rand(1..4)
  if ran == 1
    dice1.move(dice1,"W")
  elsif ran==2
    dice1.move(dice1,"S")
  elsif ran==3
    dice1.move(dice1,"E")
  elsif ran==4
    dice1.move(dice1,"N")
  end
  if dice1.top==dice2.top  && dice1.down==dice2.down && dice1.left==dice2.left  && dice1.right==dice2.right  && dice1.up==dice2.up && dice1.back==dice2.back

    flag=1
    break
  end

end
if flag==1
  puts "Yes"
elsif flag==0
  puts "No"
end
