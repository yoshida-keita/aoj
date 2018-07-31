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
     puts @top
  end
end

a,b,c,d,e,f=gets.split.map(&:to_i)
dice=Dice.new(a,b,c,d,e,f)
moves = gets.split("")
moves.each do |m|
  dice.move(dice,m)
end
dice.printDice()
