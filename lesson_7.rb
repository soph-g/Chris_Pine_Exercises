=begin
  #Exercise 1 - Alphabetize words

  puts
  puts "Please give me some words to sort, pressing enter after every word."
  puts "When you've typed enough words, press enter again."

  text = "string"
  array = []

  while text != ""
    text = gets.chomp
    if text != ""
      array.push(text.downcase)
    end
  end

  array.sort!
  puts "Here are your words, sorted alphabeically:"
  puts array

=end

#=begin
  #Exercise 2 - sorting an array without using sort.

    puts
    puts "Please give me some words to sort, pressing enter after every word."
    puts "When you've typed enough words, press enter again."

    text = "string"
    array = []
    sorted_array = []
    holding_array = []

    while text != ""
      text = gets.chomp
      if text != ""
        array.push(text.downcase)
      end
    end

    while array.length > 0
      var1 = array.pop
      if sorted_array.length > 0
        var2 = sorted_array.pop
      else
        var2 = array.pop
      end

      while var1 < var2
        if sorted_array.length > 0
          holding_array.push(var2)
          var2 = sorted_array.pop
        else
          sorted_array.push(var1)
          var1 = 0
          sorted_array.push(var2)
          var2 = 0
        end
      end

      if var1 !=0 and var2 !=0
        sorted_array.push(var2)
        sorted_array.push(var1)
      end

      holding_array.length.times do
        sorted_array.push(holding_array.pop)
      end

    end

  puts sorted_array

#=end

=begin
  #Exercise 3 - Table of Contents

  contents_table = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", "Chapter 3: Variables", "page 118"]

  line_width = 60

  puts
  puts contents_table[0].center(line_width)
  puts
  puts contents_table[1].ljust(line_width/2) + contents_table[2].rjust(line_width/2)
  puts contents_table[3].ljust(line_width/2) + contents_table[4].rjust(line_width/2)
  puts contents_table[5].ljust(line_width/2) + contents_table[6].rjust(line_width/2)

=end
