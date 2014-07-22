class Article < ActiveRecord::Base
	has_many :authors

	validates :code, presence: true, uniqueness: true
	validates :title, presence: true


	def self.search(query)
	  if query
	    where("title like ?", "%#{query}%") 
	  else
	    find(:all)
	  end
	end

	def authores
		authores.join(',')
	end

end
