class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre    
    end

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        count = {}
        @@genres.each do |genre|
            if count[genre]
                count[genre]  += 1
            else
                count[genre] = 1
            end
        end
        count
    end

    def self.artist_count	
            artistcount = {}	
            @@artists.each do |artist|	
              if artistcount[artist]	
                artistcount[artist] += 1 	
              else	
                artistcount[artist] = 1	
              end	
            end	
            artistcount	
          end
end
