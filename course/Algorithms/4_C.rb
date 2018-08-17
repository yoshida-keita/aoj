dic={}
gets.to_i.times{
  o,w=gets.chomp.split()
  case o
  when "insert"
    dic[w]=1
  when "find"
    puts dic[w] ? "yes" : "no"
  end
}
