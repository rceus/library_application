class AuthorsearchController < ApplicationController

respond_to :js, :html

  def index
  end

  def lookup
  	@authors = Author.where("first_name like ?", "%#{params[:name]}%")
  	respond_with(@authors)
  end
end
