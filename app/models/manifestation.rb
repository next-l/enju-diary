class Manifestation < ActiveRecord::Base
  attr_accessible :date_of_publication, :isbn, :original_title, :url

  has_many :creates
  has_many :patrons, :through => :creates
end
