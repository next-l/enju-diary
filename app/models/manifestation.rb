class Manifestation < ActiveRecord::Base
  attr_accessible :date_of_publication, :isbn, :original_title, :url
end
