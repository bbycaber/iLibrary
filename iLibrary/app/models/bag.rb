class Bag < ActiveRecord::Base
  belongs_to :student

  has_many :books
  has_many :magazines
  has_many :articles
end
