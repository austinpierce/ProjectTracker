class Feature < ApplicationRecord
	after_create :feature_code
	validates :project_id, :project_id => true

	belongs_to :project

	def self.feature_code
		project = Project.select("short_name").where("project_id = :project_id").map(&:short_name)
		num = 10.to_s
		feat_code = project + '%04i' % num
		#self.short_name = feat_code

		#https://stackoverflow.com/questions/8096137/send-parameter-to-before-save
		#https://www.google.com/search?q=rails+store+form+value+before+passed+to+database&oq=rails+store+form+value+before+passed+to+database&aqs=chrome..69i57.14204j0j4&sourceid=chrome&ie=UTF-8
	end

end
