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
    array.each{|item| puts (array.index(item)+1).to_s+ ". " + item}
end

def play(songsarray)
    puts "Please enter a song name or number:"
    response = gets.strip
    if response.length < 2 && response.to_i < songsarray.length
        puts "Playing #{songsarray[response.to_i-1]}"
    elsif response.to_i == 0 && (songsarray.include? response)
        puts "Playing #{songsarray[response.to_i]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(argument)
    f = true
    while f == true
        puts "Please enter a command:"
        input = gets.strip
        case input
        when "help"
            help
        when "list"
            list(argument)
        when "play"
            play(argument)
        when "exit"
            exit_jukebox
            f = false
        else
            "Invalid command!"
        end
    end
end