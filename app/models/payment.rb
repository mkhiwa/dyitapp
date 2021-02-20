class Payment < ApplicationRecord

	before_create :stat_type

	def stat_type
     self.status = "in progress"
	end
end
