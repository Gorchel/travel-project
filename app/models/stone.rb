class Stone < ActiveRecord::Base
	belongs_to :city
	belongs_to :region
end
