class ProjectController < ApplicationController

	def new
		@project = Project.new
	end

	def create 
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = "Project was created"
			redirect_to project_index_path
		else
			render 'new'
		end
	end

	def index
		@projects = Project.all
	end

	private

	def project_params
		params.require(:project).permit(:name, :short_name, :description)
	end

end