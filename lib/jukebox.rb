def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs_array)
    songs_array.each_with_index do |song, i|
        puts "#{i + 1}. #{song}"
    end
end

def play(songs_array)
    puts "Please enter a song name or number:"
    users_response = gets.strip

    target_song = find_song(users_response, songs_array)
    if target_song
        puts "Playing #{target_song}"
    else
        puts "Invalid input, please try again"
    end
end

def find_song(users_input, songs_array)
    if users_input.to_i >= 1 && users_input.to_i <= songs_array.length
        return songs_array[users_input.to_i - 1] || false
    elsif songs_array.include?(users_input)
        return songs_array.find { |song| song == users_input}
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    while true do
        puts "Please enter a command:"
        users_response = gets.strip

        case users_response.downcase
        when "help"
            help
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "exit"
            exit_jukebox
            break
        else
            puts "Invalid entry"
        end
    end
end

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