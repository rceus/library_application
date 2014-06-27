class Shelf < ActiveRecord::Base
	has_many:books
	validates_presence_of :shelf_name
end
