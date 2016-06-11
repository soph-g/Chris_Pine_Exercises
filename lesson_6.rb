=begin
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

=end

=begin

  #Exercise 2 - Deaf Grandma

  puts
  puts "Ask your deaf grandma a question!"
  question = ''

  while question != 'BYE'
    question = gets.chomp
    if question == 'BYE'
      puts
    elsif question == question.upcase
      puts "No, not since ".upcase + rand(1930..1950).to_s
    else
      puts "Huh?! Speak up, sonny!".upcase
    end
  end

=end

=begin

  #Exercise 2b - Deaf Grandma Extended

  loop_counter = 0

  puts
  puts "Ask your deaf grandma a question:"

  while loop_counter < 3
    question = gets.chomp
    if question == "BYE"
      loop_counter += 1
      if loop_counter < 3
        puts "WHAT DID YOU SAY?"
      end
    elsif question == question.upcase
      puts "NO, NOT SINCE " + rand(1930..1950).to_s
      loop_counter = 0
    else
      puts "HUH?! SPEAK UP SONNY!"
      loop_counter = 0
    end
  end

  puts "BYE THEN!"
  puts

=end

#=begin
  #Exercise 3 - Leap Years

  puts "This program will return all leap years between given start and end years."
  puts "Please enter a start year:"
  start_year = gets.chomp.to_i
  puts "Please end an end year:"
  end_year = gets.chomp.to_i
  puts "Here are the leap years between #{start_year} and #{end_year}:"
  puts
  check_year = start_year

  while check_year <= end_year
    if check_year % 4 == 0
      if check_year % 100 == 0
        if check_year % 400 == 0
          puts check_year.to_s
        end
      else
        puts check_year.to_s
      end
    end
    check_year = check_year + 1
  end
  puts

#=end
