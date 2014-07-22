class Author < ActiveRecord::Base

	def full_name
		name + last_name
	end

end
