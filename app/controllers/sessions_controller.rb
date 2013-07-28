class SessionsController < ApplicationController

  def new
  	@user =
  end

  def create
	user = User.find_by(email: params[:session][:email].downcase)
	if user && user.authenticate(params[:session][:password])

   	  # Sign the user in and redirect to the user's show page.
	   sign_in user
	   redirect_to user
  	else
  	  render 'new'
      # Create an error message and re-render the signin form.
  	end

  end

  def destroy
  end
end
