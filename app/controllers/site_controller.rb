class SiteController < ApplicationController
  def index
  	@user = current_user()
  	@location = Location.new(user: @user)
  	@locations = Location.all
  end

  def map
  	# by default this will go to views>site>map.html.erb

  end
end
