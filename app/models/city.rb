class City < ActiveRecord::Base
	has_many :natures
	has_many :castles
	has_many :meseums
	has_many :other_architectures
	has_many :palaces
	has_many :stones
	has_many :woodens
	belongs_to :region
end
