class Library < ActiveRecord::Base
  attr_accessible :address, :name, :telephone_number
  has_many :shelves
end
