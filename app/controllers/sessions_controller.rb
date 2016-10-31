class SessionsController < ApplicationController
  def new
  end

  def create
  	provider = Provider.find_by(email: params[:session][:email].downcase)
  	
  end

  def destroy

  end
end
