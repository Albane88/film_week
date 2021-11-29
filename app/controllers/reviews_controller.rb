class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie_id = @movie.id
    @review.user = current_user
    if @review.save!
      redirect_to movie_path(@movie)
    else
      render 'movie/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :movie_id, :rating)
  end
end
