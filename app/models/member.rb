class Member < ActiveRecord::Base
	belongs_to :issue
	belongs_to :city
	belongs_to :country
	validates_format_of :first_name, :last_name, :with => /^[a-zA-Z\d ]*$/i,
	:message => "can only contain letters and numbers."

	validates_presence_of :first_name, :last_name, :street, :city, :country, :phone, :email
	validates_numericality_of :phone
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
