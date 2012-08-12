class Checkout < ActiveRecord::Base
  attr_accessible :checkin_id, :due_date, :item_id, :user_id

  belongs_to :item
  belongs_to :checkin
end
