class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_one :bag

   def bag_books
     	bag.books
   end

   def bag_magazines
   	   bag.magazines
   end


	def bag_articles
		bag.articles
    end




   
end
