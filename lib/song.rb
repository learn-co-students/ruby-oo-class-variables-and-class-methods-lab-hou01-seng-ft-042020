require 'pry'

# Song class. 
# The Song class can produce individual songs. 
# Each song has a name, an artist and a genre. 
# class keeps track of the number of songs that it creates.

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre =  genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end 

    def self.count
        @@count 
    end 

    def self.artists
        #return array of artists so far
        #no duplicates 
        @@artists.uniq
    end 

    def self.genres
        #array of genres so far
        #no duplicates 
        @@genres.uniq
    end 

    def self.genre_count
        #returns hash of keys that are the genres
        #value is how many of that genre
        # iterate over the @@genres array 
        # and populate a hash with the key/value pairs. 
        # check to see if the hash already contains a key of a particular genre. 
        # If so, increment the value of that key by one,
        #  otherwise, create a new key/value pair.
        genre_count_hash = {}
            # pry(Song)> @@genres
            # => ["rap", "rap", "pop"]
            # [2] pry(Song)> genre
            # => "rap"
            # [3] pry(Song)> genre_count_hash
            # => {}
            # [4] pry(Song)> genre_count_hash[genre]
            # => nil

        @@genres.map do |genre|
            # binding.pry
            if genre_count_hash[genre]
                genre_count_hash[genre] += 1 
            else 
                genre_count_hash[genre] = 1
            end 
        end 

        genre_count_hash
    end 


    def self.artist_count
        # hash, key is artist, value is # of songs they made in our class
        artist_hash = {}

        @@artists.map do |name|
            if artist_hash[name] 
                artist_hash[name] += 1
            else
                artist_hash[name] = 1 
            end 
        end 

        artist_hash
    end 
end 


