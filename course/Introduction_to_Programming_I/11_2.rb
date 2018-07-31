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
dice=Dice.new(a,b,c,d,e,f)
n=gets.to_i
n.times do |i|
  l,m = gets.split.map(&:to_i)
    loop do
      random = Random.new
      ran=random.rand(1..4)
      if ran == 1
        dice.move(dice,"W")
      elsif ran==2
        dice.move(dice,"S")
      elsif ran==3
        dice.move(dice,"E")
      elsif ran==4
        dice.move(dice,"N")
      end
      break if dice.top==l  && dice.down==m
    end
  dice.printDice()
end
