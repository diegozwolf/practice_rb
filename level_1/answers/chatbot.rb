puts "Welcome to #{user_age} Chatbot"
puts "What is your name?"
user_name = gets.chomp
puts "how old are you?"
user_age = gets.chomp.to_i
puts "Hi, #{user_name} who is #{user_age} years old!"
puts "You will be 75 years old in  #{75-user_age} years"
puts "It is #{user_name == "Jeff"} that your name is Jeff"
puts "Bye #{user_name}"
