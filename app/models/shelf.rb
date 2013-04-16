class Shelf < ActiveRecord::Base
  attr_accessible :library_id, :name
  belongs_to :library

  validates :library_id, :presence => true
  validates :name, :presence => true, :uniqueness => true
end
