class SessionsController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

	def new
	end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to equipment_index_path
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  # The method below takes the user to the homepage
  # when they log out

  def destroy
    reset_session
    redirect_to home_path
  end
end
