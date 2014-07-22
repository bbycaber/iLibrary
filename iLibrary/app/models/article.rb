class Article < ActiveRecord::Base
	has_may :authors
end
