class Library < ActiveRecord::Base
  attr_accessible :address, :name, :telephone_number
  has_many :shelves

  validates :name, :presence => true, :uniqueness => true
end
