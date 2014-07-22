class Book < ActiveRecord::Base
	has_many :authors

	#attr_accessible :title, :review, :code, :themes, :source, :book_type

	validates :code, presence: true, uniqueness: true
	validates :title, presence: true
	validates :book_type, presence: true



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
