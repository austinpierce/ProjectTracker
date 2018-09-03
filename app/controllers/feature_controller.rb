class FeatureController < ApplicationController

	def new
		@feature = Feature.new
		@projects = Project.all
	end

	def create
		@feature = Feature.new(feature_params)
		if @feature.save
			flash[:success] = "Feature was created"
			redirect_to feature_index_path
		else
			render 'new'
		end
	end

	def index
		@features = Feature.all
	end

	private

	def feature_params
		params.require(:feature).permit(:project_id, :title, 
			:description, :estimate, :priority, :dependant_on_code,
			:is_complete, :time_spent, :git_merge_path) 	
	end 

end