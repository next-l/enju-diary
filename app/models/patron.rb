class Patron < ActiveRecord::Base
  attr_accessible :full_name

  has_many :creates
  has_many :manifestations, :through => :creates
end
