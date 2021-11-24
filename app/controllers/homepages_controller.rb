class HomepagesController < ApplicationController
  def dashboard
    @movies = Movie.all
  end

  # def index
  #   @movie = Movie.all
  # end

end
