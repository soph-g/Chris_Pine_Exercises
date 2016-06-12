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

=begin
  #Exercise 3 - Pick a number to show on the dice

  class Die
    def initialize
        roll
    end

    def roll
      @number_showing = rand(1..6)
    end

    def showing
      @number_showing
    end

    def set
      puts "please enter a number between 1 and 6"
      @side = gets.chomp
      if @side != ""
        if @side.to_i > 6 or @side.to_i < 1
          puts "Error! Number must be between 1 and 6"
        else
          @number_showing = @side
        end
      else
        @number_showing
      end
    end
  end

  dice1 = Die.new
  puts dice1.showing
  puts dice1.roll
  puts dice1.showing
  dice1.set
  puts dice1.showing
  puts dice1.roll

=end

#= begin
  #Baby Dragon Practice

  

#=end
