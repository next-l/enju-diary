class Manifestation < ActiveRecord::Base
  attr_accessible :date_of_publication, :isbn, :original_title, :url

  has_many :creates
  has_many :creators, :through => :creates, :source => :patron
  has_many :realizes
  has_many :contributors, :through => :realizes, :source => :patron
  has_many :produces
  has_many :publishers, :through => :produces, :source => :patron
  has_many :items

  validates :original_title, :presence => true
  validates :isbn, :length => {:is => 13}, :allow_blank => true
end
