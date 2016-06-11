#=begin
  #Exercise 1 - Alphabetize words

  #Ask the user for input
  #while input is not blank:
    #get input from the user, adding each input to an array
  #sort the array alphabetically
  #tell the user I am going to puts the array
  #puts the sorted array

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

#=end
