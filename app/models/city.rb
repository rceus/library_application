class City < ActiveRecord::Base
	has_many :members
	has_many :publishers
	validates_presence_of :city_name
	validates :city_name, :uniqueness => { :message => ": This city has already been registered. Please go to the next step." }
end
