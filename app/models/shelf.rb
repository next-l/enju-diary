class Shelf < ActiveRecord::Base
  attr_accessible :library_id, :name
  belongs_to :library
end
