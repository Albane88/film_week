class UsersController < ApplicationController
 # before_action :check_user

  def index
    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  # private

  # def check_user
  #   if current_user != @user
  #     redirect_to root_url, alert: "Sorry, This Profile belongs to someone else !"
  #   end
  # end

end
