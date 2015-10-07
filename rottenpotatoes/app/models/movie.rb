class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
 
  def self.same_director movie_id
    
      @movie = Movie.find movie_id
      @director_valid = !@movie.director.nil? && !@movie.director.empty?
      return Movie.where(director: @movie.director) if @director_valid
      []

  end
end

