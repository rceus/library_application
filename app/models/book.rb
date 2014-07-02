class Book < ActiveRecord::Base
	attr_accessible :name, :author, :publisher, :category

	belongs_to :author
	belongs_to :publisher
	belongs_to :category
	belongs_to :issue
	belongs_to :shelf
	validates_presence_of :name, :isbn, :status
	validates_numericality_of :isbn

	def self.search(search)
  		if search
    		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  		else
    		find(:all)
  		end
	end
end
