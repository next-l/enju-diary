class User < ActiveRecord::Base
  attr_accessible :email, :user_number, :username

  validates :full_name, :presence => true
  validates :user_number, :presence => true
  validates :username, :presence => true

  has_many :checkouts
end
