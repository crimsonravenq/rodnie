class City < ActiveRecord::Base
	has_many :events
	has_many :categories
	has_many :ages
end
