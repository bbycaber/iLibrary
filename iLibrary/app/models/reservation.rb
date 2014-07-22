class Reservation < ActiveRecord::Base
  belongs_to :student
  has_many :articles
  has_many :books
  has_many :magazines

end
