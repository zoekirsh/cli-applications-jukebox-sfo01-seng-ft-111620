#This is practice code 

def say_hello(name)
  "Hi, #{name}!"
end

puts "Enter your name:"
usersName = gets.strip

puts say_hello(usersName)