class MoviesController < ApplicationController
  def create
    @movie = Movie.new
    @movie.save!
  end
end
