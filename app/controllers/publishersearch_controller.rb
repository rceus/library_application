class PublishersearchController < ApplicationController

	respond_to :js, :html

  def index
  end

  def lookup
  	@publishers = Publisher.where("name like ?", "%#{params[:name]}%")
  	respond_with(@publishers)
  end
end
