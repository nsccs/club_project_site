class ProjectsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @project = Project.new
  end

  def create
    @project = Project.find_by()
    if @project.save
      redirect_to project_path
    else
      flash[:warning] = "Please try again"
      redirect_to new_project_path
    end
  end

  def index
    @projects = Project.all
  end

  def destroy

  end
end
