class ClientsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @client = Client.new
  end

  def create
    @client = Client.find_by()
    if @client.save
      redirect_to client_path
    else
      flash[:warning] = "Please try again"
      redirect_to new_client_path
    end
  end

  def index
    @clients = Client.all
  end

  def destroy

  end
end
