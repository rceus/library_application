class Author < ActiveRecord::Base
	has_many :books
	validates_format_of :first_name, :last_name, :with => /^[a-zA-Z\d ]*$/i,
	:message => "can only contain letters and numbers."
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_numericality_of :phone
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
