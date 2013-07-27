class SiteController < ApplicationController
  def index
  	@user = @current_user
  	@location = Location.new(user: @user)
  	@locations = Location.all
  end
end
