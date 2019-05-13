class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    #This is method is another version of the initialize method with 
    #mass assignment implemented.
    def new_initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
    end


    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end




end