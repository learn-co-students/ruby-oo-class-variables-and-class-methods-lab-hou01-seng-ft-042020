class Song

    attr_accessor :name , :artist , :genre
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(n , a , g)
        @name = n
        @artist = a
        @genre = g
        @@count += 1
        @@genres << g
        @@artists << a
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        g = {}
        @@genres.each do |key|
            if g[key]
                g[key] += 1
            else
                g[key] = 1
            end
        end
        g
    end

    def self.artist_count
        a = {}
        @@artists.each do |key|
            if a[key]
                a[key] += 1
            else
                a[key] = 1
            end
        end
        a
    end

end