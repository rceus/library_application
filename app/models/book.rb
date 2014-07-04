class Book < ActiveRecord::Base

	belongs_to :author
	belongs_to :publisher
	belongs_to :category
	has_many :issues, foreign_key:'book_id', class_name:'Issue'
	belongs_to :shelf
	validates_presence_of :name, :isbn, :status
	validates_numericality_of :isbn

end
