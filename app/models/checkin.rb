class Checkin < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :checkout
end
