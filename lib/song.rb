class Song
    @@count = 0
    @@artists = []
    @@genre = []

    attr_accessor :name, :genre, :artists

    def initialize(name, artists, genre)
        @name = name
        @artist = artists
        @genre = genre
        @@count += 1
        @@artists << artists
        @@genre << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genre.uniq
    end

    def self.genre_count
        hash = {}
        
        @@genre.each do |ele|
            if !hash[ele]
            hash[ele] = 1
            else hash[ele] += 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        
        @@artists.each do |ele|
            if !hash[ele] 
            hash[ele] = 1
            else hash[ele] += 1
            end
        end
        hash
    end
end



    

