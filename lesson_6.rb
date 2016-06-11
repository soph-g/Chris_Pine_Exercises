#=begin
  #Exercise 1 - bottles of beer on the wall

count = 99

puts "Introducing that old favourite, \"99 Bottles!\""
puts
  while count > -1
    if count > 2
      puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
      count -= 1
      puts "Take one down, pass it around, #{count} bottles of beer on the wall. "
      puts
    elsif count == 2
      puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
      count -= 1
      puts "Take one down, pass it around, #{count} bottle of beer on the wall. "
      puts
    elsif count == 1
      puts "#{count} bottle of beer on the wall, #{count} bottle of beer."
      count -= 1
      puts "Take one down, pass it around, no more bottles of beer on the wall. "
      puts
    else
      puts "No more bottles of beer on the wall, no more bottles of beer."
      puts "Go to the store and buy some more, 99 bottles of beer on the wall!"
      count -=1
      puts
    end
  end

#=end
