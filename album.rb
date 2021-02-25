# An Album class that stores an array of songs
class Album
  include Enumerable
  #An array object of songs.
  attr_reader :songs
  # Creates a new Album instance with an empty array
  def initialize
     @songs = []
   end
   #Add a song to the Album
   def add_song(song)
     songs << song
   end
 #Yield each in song in the album to a block
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billie Jean")

puts thriller.songs
