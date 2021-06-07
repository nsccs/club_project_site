class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      flash[:warning] = "The username or password is incorrect:/"
      redirect_to login_path
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login

  end

  def destroy
    #clear the sessions[:user_id]
    puts session[:user_id]
    session.delete(:user_id)
    #params[:id] = nil
    #redirect the user back to the welcome page

    redirect_to '/welcome'
  end
end
