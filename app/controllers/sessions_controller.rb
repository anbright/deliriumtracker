class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user #generates session for the user id
  		redirect_to user
  	else
  		flash.now[:danger] = "Invalid email or password"
  		render 'new'
  	end
  	
  end

  def destroy
    log_out
  	render 'logout'
  end
end
