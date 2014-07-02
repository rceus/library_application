class BooksearchController < ApplicationController
  def index 	
  	@books = Book.search(params[:search])  
  end
end
