class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def index
    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.all
    end
  end
end
