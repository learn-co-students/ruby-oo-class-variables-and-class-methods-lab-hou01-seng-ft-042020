require 'pry'
class Song

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end
    @@count = 0
    @@genres = []
    @@artists = []
    
    def self.count
# return total number of songs
        @@count
    end

    def self.genres
# return all unique genres-- no duplicates
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
# return {genre => count} 
        result = {}
        @@genres.each do |genre|

          if !result[genre]
            result[genre] = 1
          else
            result[genre] += 1
          end

        end
        result
    end

    def self.artist_count
        result = {}
        @@artists.each do |artist|
            
            if !result[artist] 
                result[artist] = 1
            else
                result[artist] += 1
            end
            
        end
        result
    end

    # binding.pry
end

