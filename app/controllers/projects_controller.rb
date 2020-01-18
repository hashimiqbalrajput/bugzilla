class ProjectsController < ApplicationController

	before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
  	@projects = current_user.projects
  end

  def show
    redirect_to projects_path
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	current_user.projects << @project
    @project.owner_id = current_user.id
  	if @project.save
      redirect_to projects_path
  	else
      render 'new'
  	end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
  	params.require(:project).permit(:title, :content, :owner)
  end
end
