require_relative 'song.rb'

def append_song(result, song)
  result << song.title << " (" << song.artist << ")"
end

peppy_song = Song.new("A Beautiful Day", "U2")
result = ""
append_song(result, peppy_song)

puts result