=begin
  #Exercise 1 - Angry Boss

  puts "WHAT DO YOU WANT?"
  demand = gets.chomp
  puts "WHADDAYA MEAN \"I WANT " + demand.upcase + ".\"?!? YOU'RE FIRED!!"

=end

=begin
  #Exercise 2 - Table of contents
line_width = 60

puts "Table of Contents".center line_width
puts
puts "Chapter 1: Numbers".ljust(line_width/2) + "page 1".rjust(line_width/2)
puts "Chapter 2: Letters".ljust(line_width/2) + "page 72".rjust(line_width/2)
puts "Chapter 3: Variables".ljust(line_width/2) + "page 118".rjust(line_width/2)

=end
