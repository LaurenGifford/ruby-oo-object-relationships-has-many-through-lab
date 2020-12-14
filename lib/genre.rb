class Genre
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        songs.collect{|song| song.artist}
    end
end

#1. instance method, `#songs`, that iterates through
#   all songs and finds the songs that belong to that genre.
#2. instance method, `#artists`, that iterates over the
#   genre's collection of songs and collects the artist that owns each song.

