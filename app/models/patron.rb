class Patron < ActiveRecord::Base
  attr_accessible :full_name

  has_many :creates
  has_many :works, :through => :creates
  has_many :realizes
  has_many :expressions, :through => :realizes
  has_many :produces
  has_many :manifestations, :through => :produces
end
