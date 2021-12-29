class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count 
    end

    def self.find_movie_with_id
        Movie.find(id)
    end

    def self.find_movie_with_attributes
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def self.update_with_attributes
        Movie.update(attributes)
    end

    def self.update_all_titles
        Movie.update(title: title)
    end

    def self.delete_by_id
        Movie.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end