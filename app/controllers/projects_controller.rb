class ProjectsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      flash[:warning] = "Please try again"
      redirect_to new_project_path
    end
  end

  def index
    @projects = Project.all
  end

  def show

  end

  def destroy

  end

  private

  def project_params
    params.require(:project).permit(:title, :client_id, :team_size_limit, :project_type_id, :status_id)
  end
end
