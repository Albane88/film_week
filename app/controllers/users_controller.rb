class UsersController < ApplicationController
  def show
    @user = current_user
  def index
    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.all
    end
  end
end
end
