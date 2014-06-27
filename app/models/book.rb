class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :publisher
	belongs_to :category
	belongs_to :issue
	belongs_to :shelf
	validates_presence_of :name, :isbn, :status
	validates_numericality_of :isbn
end
