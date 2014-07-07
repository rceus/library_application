class CategorysearchController < ApplicationController
  respond_to :js, :html

  def index
  end

  def lookup
  	@categories = Category.where("genre like ?", "%#{params[:name]}%")
  	respond_with(@categories)
  end
end
