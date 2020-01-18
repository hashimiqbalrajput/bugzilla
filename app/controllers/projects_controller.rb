class ProjectsController < ApplicationController

	# before_action :

  def index
  	@projects = current_user.projects
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	current_user.projects << @project
  	if @project.save
      redirect_to projects_path
  	else
      render 'new'
  	end
  end

  private

  def project_params
  	params.require(:project).permit(:title, :content, :owner)
  end
end
