class Item < ActiveRecord::Base
  attr_accessible :item_identifier, :shelf_id, :manifestation_id
  belongs_to :manifestation
  belongs_to :shelf

  validates :manifestation_id, :presence => true
  validates :shelf_id, :presence => true
  validates :item_identifier, :presence => true, :uniqueness => true
end
