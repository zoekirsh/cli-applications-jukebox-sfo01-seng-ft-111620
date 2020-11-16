require 'pry'

def help 
  #outputs instructions for the user on how to use program
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  #outputs list of songs 
  playlist = []
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}"  }
end

def play(songs) 
  #prompt user to input a song/number
  #if number output approp song name
  #elsif valid song, output approp song name 
  puts "Please enter a song name or number:"
  usersChoice = gets.strip
  
  if usersChoice.to_i <= songs.length && usersChoice.to_i >= 1  
    puts "Playing #{songs[usersChoice.to_i - 1]}"
  elsif songs.any? { |song| song == usersChoice } 
    puts "Playing #{usersChoice}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  #say goodbye and exit program 
  puts "Goodbye"
end

def run(songs)
  #calls on all the methods 
  puts "Please enter a command:"
  userInput = gets.strip
  until userInput == "exit"
    if userInput == "help"
      help
    elsif userInput == "list"
      list(songs)
    elsif userInput == "play"
      play(songs)
    end
  end
  
  if userInput == "exit"
    exit_jukebox
  end
end
