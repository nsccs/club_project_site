class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def show
  end

  def create
   @user = User.new(user_params)
   if @user.save
     session[:user_id] = @user.id
     redirect_to welcome_path
   else
     flash[:warning] = "Please try again"
     redirect_to new_user_path
   end
  end

  private

  def user_params
    params.require(:user).permit(:unique_id, :email, :username, :password)
  end
end
