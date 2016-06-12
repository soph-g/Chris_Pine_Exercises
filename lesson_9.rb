=begin
  #Exercise 1 - billion seconds old

  birthday = Time.mktime(1984, 07, 11, 19, 30, 35)
  puts birthday + 1000000000

=end

=begin
  #Exercise 2 - Birthday bumps

  puts
  puts "What year were you born in?"
  year = gets.chomp
  puts "What month were you born in?"
  month = gets.chomp
  puts "What day were you born on (number format)?"
  day = gets.chomp

  birthdate = Time.mktime(year, month, day)
  age = ((Time.now - birthdate)/60/60/24/365).to_i

  puts "You are #{age}!"
  age.times do
    puts "BUMP"
  end



=end
