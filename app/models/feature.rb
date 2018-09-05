class Feature < ApplicationRecord
	belongs_to :project
	before_validation :create_code
	validates :code, presence: true, uniqueness: true

	private

	def create_code
		num = project.features.count + 1
		num_code = '%04i' % num
		self.code ||= project&.short_name + num_code
	end

end
