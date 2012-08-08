class Item < ActiveRecord::Base
  attr_accessible :item_identifier, :shelf_id, :manifestation_id
  belongs_to :manifestation
  belongs_to :shelf
end
