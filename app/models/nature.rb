class Nature < ActiveRecord::Base
	has_many :citys
	has_many :regions
end
