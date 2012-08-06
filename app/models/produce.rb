class Produce < ActiveRecord::Base
  attr_accessible :manifestation_id, :patron_id

  belongs_to :patron
  belongs_to :manifestation
end
