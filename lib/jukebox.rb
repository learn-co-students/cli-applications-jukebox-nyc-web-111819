# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  index = 0
  array.each_with_index { |val, index|
    puts "#{index+1}. #{val}" }
end 

def play(array)
  puts "Please enter a song name or number:"
  user_song = gets.strip
  song_numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  if song_numbers.any? {|song_num| song_num==user_song}
    p user_song
    user_song = user_song.to_i
    p user_song
    user_song = array[user_song-1]
    p user_song
  end 
  if array.any? { |song| song==user_song}
    puts "Playing #{user_song}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  exiter = ""
  while exiter != "exit"
  if user_input == "help"
    help
     
  elsif user_input == "list"
    list(songs)
    
  elsif user_input == "play"
    play(songs)
  
  elsif user_input == "exit"
    exit_jukebox
    exiter = user_input
  end
end 
end
