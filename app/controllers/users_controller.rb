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

  def destroy
    @user.destroy
    redirect_to watch_party_path(@watch_party.user)
  end
end
