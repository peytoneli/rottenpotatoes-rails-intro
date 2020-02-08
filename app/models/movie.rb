class Movie < ActiveRecord::Base
    def self.ratings
        ["G","PG","PG-13","R"]
    end
    def self.with_ratings(ratings)
        ratingsUpcase = []
        ratings.each do |r|
            ratingsUpcase << r.upcase
        end
        self.where(rating: ratingsUpcase)
    end
end
