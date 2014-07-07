class GooglebooksController < ApplicationController

	respond_to :js, :html

  def index
  end

  def lookup
  	require 'googlebooks'
  	@books = GoogleBooks.search("%#{params[:name]}%",{:count => 10})
  	respond_with(@books)
  end

end
