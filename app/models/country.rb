class Country < ActiveRecord::Base
	has_many :members
	has_many :publishers
	validates_presence_of :country_name
	validates :country_name, :uniqueness => { :message => ": This country has already been registered. Please go to the next step." }
end