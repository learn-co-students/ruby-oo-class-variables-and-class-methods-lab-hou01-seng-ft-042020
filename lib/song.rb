require 'pry'

class Song

    attr_accessor :name, :artist, :genre, :artist_count

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
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
        genre_count = {}
        
        @@genres.each do |index|
            if genre_count[index] 
                genre_count[index] += 1
            else
                genre_count[index] = 1
            end
        end
        return genre_count

    end


    def self.artist_count
        artist_count = {}

        @@artists.each do |index|
            if artist_count[index]
                artist_count[index] += 1
            else
                artist_count[index] = 1
            end
        end
        return artist_count
    end


end
