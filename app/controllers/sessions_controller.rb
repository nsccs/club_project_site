class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    puts "pickles #{params}"
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      flash[:warning] = "The username or password is incorrect:/"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    #redirect the user back to the welcome page
    redirect_to '/welcome'
  end
end
