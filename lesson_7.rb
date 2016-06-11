=begin
  #Exercise 1 - Alphabetize words

  puts
  puts "Please give me some words to sort, pressing enter after every word."
  puts "When you've typed enough words, press enter again."

  text = "string"
  array = []

  while text != ""
    text = gets.chomp
    array.push(text.downcase)
  end

  array.sort!
  puts "Here are you words, sorted alphabeically:"
  puts array

=end

=begin
  #Exercise 2 - sorting an array without using sort.

    got stuck, will come back to this!
    

=end

#=begin
  #Exercise 3 - Table of Contents

  contents_table = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", "Chapter 3: Variables", "page 118"]

  line_width = 60

  puts
  puts contents_table[0].center(line_width)
  puts
  puts contents_table[1].ljust(line_width/2) + contents_table[2].rjust(line_width/2)
  puts contents_table[3].ljust(line_width/2) + contents_table[4].rjust(line_width/2)
  puts contents_table[5].ljust(line_width/2) + contents_table[6].rjust(line_width/2)

#=end
