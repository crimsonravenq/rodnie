class Age < ActiveRecord::Base
	belongs_to :city
	has_many :events
end
