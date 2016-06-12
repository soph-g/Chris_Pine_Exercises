=begin
  #Exercise 1 - english numbers

  def english_number(number)
    if number < 0
      return "Please enter a number zero or greater"
    end
    if number == 0
      return "zero"
    end

    num_string = ""

    ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    left = number
    write = left / 1000000
    left = left - write * 1000000

    if write > 0
      millions = english_number(write)
      num_string = num_string + millions + " million"
      if left > 0
        num_string = num_string + ' '
      end
    end

    write = left / 1000
    left = left - write * 1000

    if write > 0
      thousands = english_number(write)
      num_string = num_string + thousands + " thousand"
      if left > 0
        num_string = num_string + ' '
      end
    end

    write = left / 100
    left = left - write * 100

    if write > 0
      hundreds = english_number(write)
      num_string = num_string + hundreds + " hundred"
      if left > 0
        num_string = num_string + ' '
      end
    end

    write = left / 10
    left = left - write * 10

    if write > 0
      if (write == 1) and (left > 0)
        num_string = num_string + teenagers[left-1]
        left = 0
      else
        num_string = num_string + tens_place[left-1]
      end

      if left > 0
        num_string = num_string + "-"
      end
    end

    write = left
    left = 0

    if write > 0
      num_string = num_string + ones_place[write-1]
    end

    num_string

  end

  puts english_number(  0)
  puts english_number(  9)
  puts english_number( 10)
  puts english_number( 11)
  puts english_number( 17)
  puts english_number( 32)
  puts english_number( 88)
  puts english_number( 99)
  puts english_number(100)
  puts english_number(101)
  puts english_number(234)
  puts english_number(3211)
  puts english_number(999999)
  puts english_number(1000000000000)

=end

=begin
#Exercise 2 - wedding numbers

def english_number(number)
  if number < 0
    return "Please enter a number zero or greater"
  end
  if number == 0
    return "zero"
  end

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number
  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = english_number(write)
    num_string = num_string + millions + " million"
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if (write == 1) and (left > 0)
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[left-1]
    end

    if left > 0
      num_string = num_string + " and "
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string

end

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)

=end

#=begin
  #Exercise 3 - bottles of beer

  def english_number(num)

    num_string = ""

    ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    if num < 0
      return "Please enter a number greater than 0"
    end

    num_string = ""
    left = num

    if left == 0
      num_string = 'zero'
    end

    #write thousands place
    write = left/1000
    left = left - write * 1000
    if write > 0
      num_string = num_string.to_s + english_number(write).to_s + ' thousand'
      if left > 100
        num_string = num_string + ", "
      elsif left > 0
        num_string = num_string + " and "
      end
    end

    #write hundres place
    write = left/100
    left = left - write * 100
    if write > 0
      num_string = num_string.to_s + english_number(write).to_s + ' hundred'
      if left > 0
        num_string = num_string + " and "
      end
    end

    #write tens place or teens
    write = left/10
    left = left - write * 10

    if write > 0
      if write == 1 and left > 0
        num_string = num_string + teenagers[left - 1]
        left = 0
      else
        num_string = num_string + tens_place[write-1]
        if left > 0
          num_string = num_string + "-"
        end
      end
    end

    #write ones place
    write = left
    left = 0
    if write > 0
      num_string = num_string + ones_place[write-1]
    end

    num_string

  end


begin
  count = 9999
  last_line = count

  puts "Introducing that old favourite, \"#{english_number(count)} bottles!\""
  puts
    while count > -1
      if count > 2
        puts "#{english_number(count)} bottles of beer on the wall, #{english_number(count)} bottles of beer."
        count -= 1
        puts "Take one down, pass it around, #{english_number(count)} bottles of beer on the wall. "
        puts
      elsif count == 2
        puts "#{english_number(count)} bottles of beer on the wall, #{english_number(count)} bottles of beer."
        count -= 1
        puts "Take one down, pass it around, #{english_number(count)} bottle of beer on the wall. "
        puts
      elsif count == 1
        puts "#{english_number(count)} bottle of beer on the wall, #{english_number(count)} bottle of beer."
        count -= 1
        puts "Take one down, pass it around, no more bottles of beer on the wall. "
        puts
      else
        puts "No more bottles of beer on the wall, no more bottles of beer."
        puts "Go to the store and buy some more, #{english_number(last_line)} bottles of beer on the wall!"
        count -=1
        puts
      end
    end

end

#=end
