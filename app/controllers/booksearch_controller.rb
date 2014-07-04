class BooksearchController < ApplicationController
  
respond_to :js, :html

  def index 	
  end

  def lookup
  	@books = Book.where("name like ?", "%#{params[:name]}%")
  	respond_with(@books)
  end
end
