class Artist
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre_name)
        song_name = Song.new(song_name, self, genre_name)
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.collect{|song| song.genre}
    end

end



# 1. instance method, `#new_song`, that takes in two
# arguments, name and genre, and creates a new song. That song should know that
# it belongs to the artist.
# 2. instance method, `#songs`, that iterates through
#   all songs and finds the songs that belong to that artist

# 3. instance method, `#genres` that iterates over that artist's songs and collects the genre of each song