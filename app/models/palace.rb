class Palace < ActiveRecord::Base
	belongs_to :city
	belongs_to :region
end
