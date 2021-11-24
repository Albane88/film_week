class HomepagesController < ApplicationController
  def dashboard
  end

  def index
    @movie = Movie.all
  end

end
