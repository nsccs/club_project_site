class ProjectUsersController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def create
    #create new record
    puts "PICKLES"
    puts params
    project_user = ProjectUser.new(project_users_params)

    if project_user.save!
      flash[:success] = "Added to team successfully."
    else
      flash[:warning] = "Unable to join team"
    end
    redirect_to projects_path
  end

  private

  def project_users_params
    params.require(:project_users).permit(:user_id, :project_id)
  end
end
