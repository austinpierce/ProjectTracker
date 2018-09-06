class Feature < ApplicationRecord
	belongs_to :project
	before_validation :create_code
	validates :code, presence: true, uniqueness: true

	private

	def create_code
		num = project.features.count + 1
		self.code ||= project&.short_name + '%04i' % num.to_s
	end

end
