class Publisher < ActiveRecord::Base
	has_many :books
	belongs_to :city
	belongs_to :country
	validates_presence_of :name, :street, :city, :country, :phone, :email, :status
	validates_numericality_of :phone
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
