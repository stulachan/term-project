class SessionsController < ApplicationController
  def new
  end

  def login_sucess

  	render :create

  end

  def create

  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		login_sucess
  		
  	else
		render :login_error 
  end

end

  def destroy

  	session[:user_id] = nil
  	redirect_to root_url

  end
end
