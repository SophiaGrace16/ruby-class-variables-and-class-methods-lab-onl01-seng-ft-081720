class Song

    attr_accessor :artist, :genre, :name 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        uniq_genres = @@genres.uniq
        uniq_genres
    end

    def self.artists
        uniq_artists = @@artists.uniq
        uniq_artists
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)){|hash,e|
        hash[e]+= 1
        hash }
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)){|hash,e|
        hash[e]+= 1
        hash }
    end


end