class Book < ActiveRecord::Base
	has_may :authors
end
