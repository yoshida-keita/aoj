dic = []
dic = ('a'..'z').to_a
value = Array.new(26,0)
until (a = gets) ==nil
  a=a.downcase.split("")
  a.each do |i|
    dic.each do |d|
      if i == d
        value[dic.index(d)] = value[dic.index(d)]+1
        break
      end
    end
  end
end
  26.times do |i|
    puts "#{dic[i]} : #{value[i]}"
  end
