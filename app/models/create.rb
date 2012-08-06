class Create < ActiveRecord::Base
  attr_accessible :manifestation_id, :patron_id

  belongs_to :patron
  belongs_to :work, :class_name => 'Manifestation', :foreign_key => :manifestation_id
end
